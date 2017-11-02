<?php
/**
 * Created by PhpStorm.
 * User: Parham-Pc
 * Date: 2/20/2017
 * Time: 2:24 AM
 */

namespace App;

use Cake\ORM\TableRegistry;


class Calculator
{

    private $quote;

    private $ssMarkedup = 0;
    private $dgMarkedup = 0;
    private $fibrMarkedup = 0;
    private $perfMarkedup = 0;


    private $discountedAmount = 0;

    private $installation = 0;
    private $totalInstallation = 0;
    private $totalSellPrice = 0;
    private $profit = 0;


    private $mc_parts = [];
    private $additionals_m = [];
    private $additionals_l = [];
    private $accessories = [];


    private $securityWindowMesh = 52;
    private $securityDoorMesh = 105;
    private $dgDoorMesh = 115;
    private $dgWindowMesh = 50;
    //private $fibrDoorMesh = 0;
    //private $fibrWindowMesh = 0;
    private $perfDoorMesh = 105;
    private $perfWindowMesh = 52;

    private $freightConsumables = 1.00;

//**** Hourly Rates ****//
    private $sdHrlyRate;// = 30.00;
    private $swHrlyRate;// = 30.00;
    private $ddHrlyRate;// = 30.00;
    private $dwHrlyRate;// = 30.00;
    private $fdHrlyRate;// = 30.00;
    private $fwHrlyRate;// = 30.00;
    private $pdHrlyRate;// = 30.00;
    private $pwHrlyRate;// = 30.00;


    /*** Clean Ups ***/
    private $secWindowCleanUp;// = 30.00;
    private $secDoorCleanUp;//= 90.00;

    private $dgWindowCleanup;// = 25;
    private $dgDoorCleanup;// = 90;

    private $fibrWindowCleanup;// = 5;
    private $fibrDoorCleanup;// = 25;

    private $perfDoorCleanup;// = 80;
    private $perfWindowCleanup;// = 25;


    /*** Product Markups ***/
    private $sdMarkup;
    private $swMarkup;
    private $ddMarkup;
    private $dwMarkup;
    private $fdMarkup;
    private $fwMarkup;
    private $pdMarkup;
    private $pwMarkup;


// **** Powder Coatings ****
    private $std;// = 0;
    private $spec1;// = 4.50;
    private $spec2;// = 5.50;
    private $spec3;// = 7.00;
    private $spec4;// = 8.00;


//**** Parts ****//
    private $sgSSMesh;// = 75.60;
    private $grille7mm;// = 21.51;
    private $petMesh;// = 10.55;
    private $insectMesh;// = 1.26;
    private $perfAliMesh;// = 82.82;


    private $secWinFrame;// = 4.14;
    private $secDoorFrame;// = 7.16;

    private $dgDoorFrame;// = 5.37;
    private $dgWindowFrame;// = 2.93;

    private $flyFrame;// = 1.48;

    private $winCnrStake;// = 0.51;
    private $doorCnrStake;// = 0.69;

    private $cnrStakeFFrame;// = 0.18; //Corner stake for F/Frame

    private $PVCLSeat;// = 2.37;
    private $PVCWedge;// = 4.69;

    private $rollerHinges;// = 2.15;

    private $singleLock;// = 23.74;
    private $tripleHngd;// = 66.34;
    private $tripleSliding;// = 66.34;

    private $spline;// = 0.11;

    private $perfSheetFixingBead;// = 3.79;


    /**Midrail parts**/

    private $midrailPart;// = 5.09;
    private $crossBrace;// = 1.50;


    /** Master Markups **/
    private $secPerf_dist;
    private $dgfibr_dist;

    private $secperf_whsl;
    private $dgfibr_whsl;

    private $secperf_re;
    private $dgfibr_re;

    private $auth;

    private $stocks;


    private $stockMetas = [];


// **********


    function __construct($quote, $auth, $stocks)
    {
        $this->quote = $quote;
        $this->auth = $auth;
        $this->stocks = $stocks;
        $this->setValues();

    }


    public function calculatePrices()
    {
        foreach ($this->quote['products'] as $product) {
            $this->calculateProduct($product);
        }

        foreach ($this->quote['midrails'] as $midrail) {
            $this->calculateMidrail($midrail);
        }

        foreach ($this->quote['additionalpermeters'] as $additionalpermeter) {
            $this->calculateAdditionalM($additionalpermeter);
        }

        foreach ($this->quote['additionalperlength'] as $additionalLength) {
            $this->calculateAdditionalL($additionalLength);
        }

        foreach ($this->quote['accessories'] as $accessory) {
            $this->calculateAccessory($accessory);
        }

        foreach ($this->quote['customitems'] as $customitem) {
            $this->calculateCustomItem($customitem);
        }

        if ($this->quote['installation_type'] == 'preset amount') {
            $this->totalInstallation = round($this->installation + $this->quote['freight_cost'], 2);
            $this->quote['installation_preset_amount'] = $this->installation;
            $this->quote['installation_custom_amount'] = 0;
        } else {
            $this->totalInstallation = round($this->quote['installation_custom_amount'] + $this->quote['freight_cost']);
            $this->quote['installation_preset_amount'] = 0;
        }

        $this->quote['discount_amount'] = $this->discountedAmount;
        $this->quote['installation_total_cost'] = $this->totalInstallation;
        $this->quote['total_sell_price'] = round($this->totalSellPrice + $this->totalInstallation - $this->discountedAmount, 2);
        $this->quote['profit'] = round($this->profit - $this->discountedAmount, 2);

        $this->quote['ss_markup_amount'] = $this->ssMarkedup;
        $this->quote['dg_markup_amount'] = $this->dgMarkedup;
        $this->quote['fibr_markup_amount'] = $this->fibrMarkedup;
        $this->quote['perf_markup_amount'] = $this->perfMarkedup;

        return $this->stockMetas;
    }


    private function calculateProduct($product)
    {

        $qty = $product->product_qty;
        $secDigFibr = $product->product_sec_dig_perf_fibr;
        $ssgalpet = $product->product_316_ss_gal_pet;
        $winDoor = $product->product_window_or_door;
        $height = $product->product_height;
        $width = $product->product_width;
        $lockCounts = $product->product_number_of_locks;
        $lockType = $product->product_lock_type;
        $emergencyWindow = $product->product_emergency_window;


        $isSecDoor = false;
        $isSecWindow = false;
        $isDgDoor = false;
        $isDgWindow = false;
        $isFibrDoor = false;
        $isFibrWindow = false;
        $isPerfDoor = false;
        $isPerfWindow = false;


        if ($secDigFibr == 'Security' && $winDoor == 'Door') {
            $isSecDoor = true;
        } else if ($secDigFibr == 'Security' && $winDoor == 'Window') {
            $isSecWindow = true;
        } else if ($secDigFibr == 'D/Grille' && $winDoor == 'Door') {
            $isDgDoor = true;
        } else if ($secDigFibr == 'D/Grille' && $winDoor == 'Window') {
            $isDgWindow = true;
        } else if ($secDigFibr == 'Fibre' && $winDoor == 'Door') {
            $isFibrDoor = true;
        } else if ($secDigFibr == 'Fibre' && $winDoor == 'Window') {
            $isFibrWindow = true;
        } else if ($secDigFibr == 'Perf Ali' && $winDoor == 'Door') {
            $isPerfDoor = true;
        } else if ($secDigFibr == 'Perf Ali' && $winDoor == 'Window') {
            $isPerfWindow = true;
        }


        $pwdCoat = ($width + $height) * 2 / 5000;
        $productLmtr = ($width + $height) * 2 / 1000;


        $heightMesh = 0.0;
        $widthMesh = 0.0;
        $frame = 0.0;
        $cnrStake = 0.0;
        $hingedCalculated = 0.0;
        $cleanUp = 0.0;
        $hrlyRate = 0.0;
        $sqmPart = 0.0;
        $markup = 0.0;

        $hasSpline = false;
        $hasInsectMesh = false;
        $hasComponentsHinges = false;
        $hasPvc = false;
        $hasPerfSheetFixing = false;


        if ($isSecDoor) {
            $heightMesh = $height - $this->securityDoorMesh;
            $widthMesh = $width - $this->securityDoorMesh;
            $frame = $this->secDoorFrame;
            $cnrStake = $this->doorCnrStake;
            $cleanUp = $this->secDoorCleanUp;
            $hrlyRate = $this->sdHrlyRate;
            $sqmPart = $this->sgSSMesh;
            $hasComponentsHinges = true;
            $hasPvc = true;
            $markup = $this->sdMarkup;
        } else if ($isSecWindow) {
            $heightMesh = $height - $this->securityWindowMesh;
            $widthMesh = $width - $this->securityWindowMesh;
            $frame = $this->secWinFrame;
            $cnrStake = $this->winCnrStake;
            $cleanUp = $this->secWindowCleanUp;
            $hrlyRate = $this->swHrlyRate;
            $sqmPart = $this->sgSSMesh;
            $hasPvc = true;
            $markup = $this->swMarkup;
        } else if ($isDgDoor) {
            $heightMesh = $height - $this->dgDoorMesh;
            $widthMesh = $width - $this->dgDoorMesh;
            $sqmPart = $this->grille7mm;
            $frame = $this->secDoorFrame;
            $cnrStake = $this->doorCnrStake;
            $hasSpline = true;
            $cleanUp = $this->dgDoorCleanup;
            $hrlyRate = $this->ddHrlyRate;
            $hasComponentsHinges = true;
            $hasInsectMesh = true;
            $markup = $this->ddMarkup;
        } else if ($isDgWindow) {
            $heightMesh = $height - $this->dgWindowMesh;
            $widthMesh = $width - $this->dgWindowMesh;
            $sqmPart = $this->grille7mm;
            $frame = $this->secWinFrame;
            $cnrStake = $this->winCnrStake;
            $cleanUp = $this->dgWindowCleanup;
            $hrlyRate = $this->dwHrlyRate;
            $hasSpline = true;
            $hasInsectMesh = true;
            $markup = $this->dwMarkup;
        } else if ($isFibrDoor) {
            $heightMesh = $height;
            $widthMesh = $width;
            $hasComponentsHinges = true;
            $frame = $this->secDoorFrame;
            if ($ssgalpet == "Pet") {
                $sqmPart = $this->petMesh;
            } else {
                $sqmPart = $this->insectMesh;
            }

            $cnrStake = $this->winCnrStake;
            $hasSpline = true;
            $cleanUp = $this->fibrDoorCleanup;
            $hrlyRate = $this->fdHrlyRate;
            $markup = $this->fdMarkup;
        } else if ($isFibrWindow) {
            $heightMesh = $height;
            $widthMesh = $width;
            $hasSpline = true;
            $frame = $this->flyFrame;
            if ($ssgalpet == "Pet") {
                $sqmPart = $this->petMesh;
            } else {
                $sqmPart = $this->insectMesh;
            }

            $cnrStake = $this->cnrStakeFFrame;
            $cleanUp = $this->fibrWindowCleanup;
            $hrlyRate = $this->fwHrlyRate;
            $markup = $this->fwMarkup;
        } else if ($isPerfDoor) {
            $heightMesh = $height - $this->perfDoorMesh;
            $widthMesh = $width - $this->perfDoorMesh;
            $sqmPart = $this->perfAliMesh;
            $frame = $this->dgDoorFrame;
            $cnrStake = $this->doorCnrStake;
            $cleanUp = $this->perfDoorCleanup;
            $hrlyRate = $this->pdHrlyRate;
            $hasComponentsHinges = true;
            $hasPerfSheetFixing = true;
            $markup = $this->pdMarkup;
        } else if ($isPerfWindow) {
            $heightMesh = $height - $this->perfWindowMesh;
            $widthMesh = $width - $this->perfWindowMesh;
            $sqmPart = $this->perfAliMesh;
            $frame = $this->dgWindowFrame;
            $cnrStake = $this->winCnrStake;
            $cleanUp = $this->perfWindowCleanup;
            $hrlyRate = $this->pwHrlyRate;
            $hasPerfSheetFixing = true;
            $markup = $this->pwMarkup;
        }

        $sqm = ($heightMesh * $widthMesh / 1000000);
        $sqmCalculated = ($sqm * $sqmPart);
        $frameCalculated = ($frame * $productLmtr);
        $cnrstakeCalculated = ($cnrStake * 4);


        $lSeatCalculated = 0;
        $pvcCalculated = 0;
        $splineCalculated = 0;
        $perfSheetFixingCalculated = 0;
        $insectMeshCalculated = 0;


        $this->fillStocks($frame, 'frame');
        $this->fillStocks($cnrStake, 'component');


        if ($hasSpline) {
            $splineCalculated = ($this->spline * $productLmtr);
            $this->fillStocks($this->spline, 'component');
        }

        if ($hasInsectMesh) {
            if ($ssgalpet == 'Insect') {
                $insectMeshCalculated = ($sqm * $this->insectMesh);
                $this->fillStocks($this->insectMesh, 'component');
            } else {
                $insectMeshCalculated = ($sqm * $this->petMesh);
                $this->fillStocks($this->petMesh, 'component');
            }
        }

        if ($hasPvc) {
            $lSeatCalculated = ($this->PVCLSeat * $productLmtr);
            $pvcCalculated = ($this->PVCWedge * $productLmtr);

            $this->fillStocks($this->PVCLSeat, 'component');
            $this->fillStocks($this->PVCWedge, 'component');
        }

        if ($hasComponentsHinges) {
            $hingedCalculated = ($this->rollerHinges * 4);
        }

        if ($hasPerfSheetFixing) {
            if ($isPerfDoor) {
                $perfSheetFixingCalculated = ($this->PVCLSeat * $this->perfSheetFixingBead);
            } else if ($isPerfWindow) {
                $perfSheetFixingCalculated = ($this->PVCLSeat * $productLmtr);
            }

        }

        $pwdCoatSpec1 = 0.00;
        $pwdCoatSpec2 = 0.00;
        $pwdCoatSpec3 = 0.00;
        $pwdCoatSpec4 = 0.00;


        //*** Calculates Powder Coats ****
        if (!empty($this->quote['color1_color']) && $this->quote['color1']) {
            $pwdCoatSpec1 = ($this->spec1 * $pwdCoat);
        }
        if (!empty($this->quote['color2_color']) && $this->quote['color2']) {
            $pwdCoatSpec2 = ($this->spec2 * $pwdCoat);
        }

        if (!empty($this->quote['color3_color']) && $this->quote['color3']) {
            $pwdCoatSpec3 = ($this->spec3 * $pwdCoat);
        }

        if (!empty($this->quote['color4_color']) && $this->quote['color4']) {
            $pwdCoatSpec4 = ($this->spec4 * $pwdCoat);
        }


        // Sum of All "Calculated" Values:
        $materialCost = 0.00;

        if ($secDigFibr && $winDoor) {
            $materialCost = $sqmCalculated + $frameCalculated + $perfSheetFixingCalculated + $insectMeshCalculated
                + $cnrstakeCalculated + $lSeatCalculated + $pvcCalculated
                + $pwdCoatSpec1 + $pwdCoatSpec2 + $pwdCoatSpec3 + $pwdCoatSpec4
                + $splineCalculated + $this->freightConsumables + $hingedCalculated;
        }


        $labourIncCutting = ($hrlyRate / 60) * $cleanUp;

        $totalCost = ($materialCost + $labourIncCutting);

        $increasedTotalCost = ($totalCost * ($markup + 100)) / 100;

        $locksTotalCost = 0;
        if ($lockType == 'Single') {
            $locksTotalCost = ($this->singleLock * $lockCounts);
            $this->fillStocks($this->singleLock, 'locks');
        } else if ($lockType == 'Trple Hngd') {
            $locksTotalCost = ($this->tripleHngd * $lockCounts);
            $this->fillStocks($this->tripleHngd, 'locks');
        } else if ($lockType == 'Trple Sldng') {
            $locksTotalCost = ($this->tripleSliding * $lockCounts);
            $this->fillStocks($this->tripleSliding, 'locks');
        }


        $this->calculateInstallation($qty, $secDigFibr, $winDoor);

        $resultTotal = ($increasedTotalCost * $qty) + $locksTotalCost;

        $role = $this->getRole();
        $masterMarkup = $this->getMasterMarkupByRole($role, $secDigFibr);


        $priceInclGst = ($resultTotal * ($masterMarkup + 100)) / 100;
        $priceIncGstPlusEmergency = $priceInclGst;
        if ($emergencyWindow) {
            $priceIncGstPlusEmergency = $priceInclGst + 140;
        }

        $sellPrice = $priceIncGstPlusEmergency;
        if ($role != 'retailer') {
            if ($secDigFibr) {
                $markup = $this->getMarkupBySecDgFibr($secDigFibr);
                $sellPrice = round(($priceInclGst * $markup / 100) + $priceIncGstPlusEmergency, 2);

            }
        }

        $profit = round($sellPrice - $priceIncGstPlusEmergency, 2);
        $this->setMarkedupAmount($secDigFibr, $profit);

        $discount = $this->quote['discount'];
        if ($discount > 0) {

            $discounted = round($sellPrice * $discount / 100, 2);
            $this->discountedAmount += $discounted;
        }

        $this->profit += $profit;
        $this->totalSellPrice += $sellPrice;

        $product->product_cost = $sellPrice;

    }


    private function getMarkupBySecDgFibr($secDgFibr)
    {
        $markup = 0;
        switch ($secDgFibr) {
            case 'Security':
                $markup = $this->quote['ss_markup'];
                break;
            case 'D/Grille':
                $markup = $this->quote['dg_markup'];
                break;
            case 'Fibre':
                $markup = $this->quote['fibr_markup'];
                break;
            case 'Perf Ali':
                $markup = $this->quote['perf_markup'];
                break;
        }
        return $markup;
    }


    private function setMarkedupAmount($secDgFibr, $discountedAmount)
    {
        switch ($secDgFibr) {
            case 'Security':
                $this->ssMarkedup += $discountedAmount;
                break;
            case 'D/Grille':
                $this->dgMarkedup += $discountedAmount;
                break;
            case 'Fibre':
                $this->fibrMarkedup += $discountedAmount;
                break;
            case 'Perf Ali':
                $this->perfMarkedup += $discountedAmount;
                break;
        }
    }


    private function calculateMidrail($midrail)
    {
        $qty = $midrail->midrail_qty;
        $secDigFibr = $midrail->midrail_sec_dig_perf_fibr;
        //$ssgalpet = $midrail->midrail_316_ssgal_pet;
        $winDoor = $midrail->midrail_window_or_door;
        $height = $midrail->midrail_height;
        $width = $midrail->midrail_width;

        $isSecDoor = false;
        $isSecWindow = false;
        $isDgDoor = false;
        $isDgWindow = false;
        $isFibrDoor = false;
        $isFibrWindow = false;


        if ($secDigFibr == 'Security' && $winDoor == 'Door') {
            $isSecDoor = true;
        } else if ($secDigFibr == 'Security' && $winDoor == 'Window') {
            $isSecWindow = true;
        } else if ($secDigFibr == 'D/Grille' && $winDoor == 'Door') {
            $isDgDoor = true;
        } else if ($secDigFibr == 'D/Grille' && $winDoor == 'Window') {
            $isDgWindow = true;
        } else if ($secDigFibr == 'Fibre' && $winDoor == 'Door') {
            $isFibrDoor = true;
        } else if ($secDigFibr == 'Fibre' && $winDoor == 'Window') {
            $isFibrWindow = true;
        }

        $midrailTimeAlloMins = 15;
        $midrailMarkUp = 0;
        $midrailConsumables = 2.00;


        $railW = ($width * 1);
        $midrailLm = ($railW / 1000);


        $item1Calculated = 0;
        $item2Calculated = 0;
        $item3Calculated = 0;

        /**** Calculates Midrail Items *****/

        if ($isSecDoor || $isSecWindow || $isDgDoor || $isDgWindow) {
            $item1Price = $this->midrailPart;
            $item1Calculated = ($item1Price * $midrailLm);
        }
        if ($isDgDoor || $isDgWindow) {
            $item2Price = $this->PVCLSeat;
            $item2Calculated = ($item2Price * $midrailLm);

            $item3Price = $this->PVCWedge;
            $item3Calculated = ($item3Price * $midrailLm);
        }
        if ($isSecDoor) {
            $item2Price = $this->PVCLSeat;
            $item2Calculated = ($item2Price * $midrailLm);

            $item3Price = $this->PVCWedge;
            $item3Calculated = ($item3Price * $midrailLm * 2);
        }
        if ($isFibrDoor) {
            $midrailConsumables = 1;

            $item1Price = $this->secWinFrame;
            $item1Calculated = ($item1Price * $midrailLm);

            $item2Price = $this->winCnrStake;
            $item2Calculated = ($item2Price * 2);

            $item3Price = 0;
            $item3Calculated = ($item3Price * $midrailLm);
        }

        if ($isFibrWindow) {
            $midrailConsumables = 1;
            $midrailTimeAlloMins = 5;

            $item1Price = $this->crossBrace;
            $item1Calculated = ($item1Price * $midrailLm);

            $item2Price = 0.1; //??
            $item2Calculated = ($item2Price * 2);

            $item3Price = 0;
            $item3Calculated = ($item3Price * $midrailLm);
        }
        /**************************/

        $pwdCoatSpec1 = 0.00;
        $pwdCoatSpec2 = 0.00;
        $pwdCoatSpec3 = 0.00;
        $pwdCoatSpec4 = 0.00;


        //*** Calculates Powder Coats ****
        if (!empty($this->quote['color1_color']) && $this->quote['color1']) {
            $pwdCoatSpec1 = ($this->spec1 * $midrailLm);
        }
        if (!empty($this->quote['color2_color']) && $this->quote['color2']) {
            $pwdCoatSpec2 = ($this->spec2 * $midrailLm);
        }

        if (!empty($this->quote['color3_color']) && $this->quote['color3']) {
            $pwdCoatSpec3 = ($this->spec3 * $midrailLm);
        }

        if (!empty($this->quote['color4_color']) && $this->quote['color4']) {
            $pwdCoatSpec4 = ($this->spec4 * $midrailLm);
        }


        // Sum of All Calculated Values
        $materialCost = 0;

        if ($secDigFibr && $winDoor) {
            $materialCost = round($pwdCoatSpec1 + $pwdCoatSpec2 + $pwdCoatSpec3
                + $pwdCoatSpec4 + $item1Calculated + $item2Calculated + $item3Calculated
                + $midrailConsumables, 2);
        }


        $labourIncCutting = 0.00;
        if ($isSecDoor || $isSecWindow || $isDgWindow || $isFibrDoor || $isFibrWindow) {
            $labourIncCutting = ($this->getHourlyRate($secDigFibr, $winDoor) / 60 * $midrailTimeAlloMins);
        } else if ($isDgDoor) {
            $labourIncCutting = ($this->getHourlyRate($secDigFibr, $winDoor) / 60 * $this->dgDoorCleanup);
        }


        $totalCost = $materialCost + $labourIncCutting;
        $increasedCost = (($totalCost * $midrailMarkUp / 100) + $totalCost);


        $resultTotal = round($qty * $increasedCost, 2);

        $role = $this->getRole();
        $masterMarkup = $this->getMasterMarkupByRole($role, $secDigFibr);
        $priceInclGst = round(($resultTotal * ($masterMarkup + 100)) / 100, 2);

        $midrail->midrail_cost = $priceInclGst;
        $this->totalSellPrice += $priceInclGst;

    }


    private function calculateAdditionalM($additionalM)
    {
        $perMeter = $additionalM->additional_per_meter;

        $price = 0;
        if ($additionalM->additional_name) {
            $price = $this->additionals_m[$additionalM->additional_name];
        }

        $total = round($price * $perMeter, 2);
        $additionalM->additional_price = $total;
        $this->totalSellPrice += $total;
    }

    private function calculateAdditionalL($additionalL)
    {
        $perLength = $additionalL->additional_per_length;

        $price = 0;
        if ($additionalL->additional_name) {
            $price = $this->additionals_l[$additionalL->additional_name];
        }

        $total = round($price * $perLength, 2);
        $additionalL->additional_price = $total;
        $this->totalSellPrice += $total;
    }

    private function calculateAccessory($accessory)
    {
        $each = $accessory->accessory_each;

        $price = 0;
        if ($accessory->accessory_name) {
            $price = $this->accessories[$accessory->accessory_name];
        }

        $total = round($price * $each, 2);
        $accessory->accessory_price = $total;
        $this->totalSellPrice += $total;
    }

    private function calculateCustomItem($customItem)
    {
        $qty = $customItem->custom_qty;
        $price = $customItem->custom_price;
        $markup = $customItem->custom_markup;
        $ticked = $customItem->custom_tick;

        $markedup = round($qty * $price * $markup / 100, 2);

        $totalCharged = round(($qty * $price) * ($markup + 100) / 100, 2);
        $customItem->custom_charged = $totalCharged;

        $this->profit += $markedup;
        $this->totalSellPrice += $totalCharged;

        if ($ticked) {
            $totalCost = $totalCharged - $markedup;
            $discount = $this->quote['discount'];
            $discountedAmount = $totalCost * $discount / 100;
            $this->discountedAmount += $discountedAmount;
        }
    }


    private function calculateInstallation($qty, $secDgFibr, $winDoor)
    {
        $installation = 0;

        if ($qty > 0) {
            if ($secDgFibr == 'Security' || $secDgFibr == 'D/Grille') {
                if ($winDoor == 'Window') {
                    $installation = 25 * $qty;
                } else if ($winDoor == 'Door') {
                    $installation = 55 * $qty;
                }
            } else if ($secDgFibr == 'Fibre') {
                if ($winDoor == 'Window') {
                    $installation = 10 * $qty;
                } else if ($winDoor == 'Door') {
                    $installation = 25 * $qty;
                }
            }
        }
        $this->installation += $installation;
    }

    private function setValues()
    {
        $parts = TableRegistry::get('Parts');
        //$dropdowns = TableRegistry::get('Dropdowns');
        $mcvaluesTable = TableRegistry::get('Mcvalues');


        //$dropdowns = $dropdowns->find('all');
        $parts = $parts->find('all')->contain(['users_parts' => function ($q) {
            $role = $this->auth->user('role');
            if ($role == 'manufacturer') {
                $userId = $this->auth->user('id');
            } else {
                $userId = $this->auth->user('parent_id');
            }
            return $q->where(['user_id' => $userId]);
        }]);

//        $mcvalues = $mcvalues->find('all')->first();
        if ($this->auth->user('role') == 'manufacturer') {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->auth->user('id')])->first();
        } else {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->auth->user('parent_id')])->first();
        }
        if (!$mcvalues) {
            $mcvalues = $mcvaluesTable->newEntity();
        }


        /* HOURLY RATES */
        $this->sdHrlyRate = $mcvalues['hrly_sd'];
        $this->swHrlyRate = $mcvalues['hrly_sw'];
        $this->ddHrlyRate = $mcvalues['hrly_dd'];
        $this->dwHrlyRate = $mcvalues['hrly_dw'];
        $this->fdHrlyRate = $mcvalues['hrly_fd'];
        $this->fwHrlyRate = $mcvalues['hrly_fw'];
        $this->pdHrlyRate = $mcvalues['hrly_pd'];
        $this->pwHrlyRate = $mcvalues['hrly_pw'];

        /*** Clean Ups ***/
        $this->secWindowCleanUp = $mcvalues['cleanup_sw'];
        $this->secDoorCleanUp = $mcvalues['cleanup_sd'];

        $this->dgWindowCleanup = $mcvalues['cleanup_dw'];
        $this->dgDoorCleanup = $mcvalues['cleanup_dd'];

        $this->fibrWindowCleanup = $mcvalues['cleanup_fw'];
        $this->fibrDoorCleanup = $mcvalues['cleanup_fd'];

        $this->perfDoorCleanup = $mcvalues['cleanup_pd'];
        $this->perfWindowCleanup = $mcvalues['cleanup_pw'];


        /*** Product Markups ***/
        $this->sdMarkup = $mcvalues['markup_sd'];
        $this->swMarkup = $mcvalues['markup_sw'];
        $this->ddMarkup = $mcvalues['markup_dd'];
        $this->dwMarkup = $mcvalues['markup_dw'];
        $this->fdMarkup = $mcvalues['markup_fd'];
        $this->fwMarkup = $mcvalues['markup_fw'];
        $this->pdMarkup = $mcvalues['markup_pd'];
        $this->pwMarkup = $mcvalues['markup_pw'];


        // **** Powder Coatings ****
        $this->std = $mcvalues['std'];
        $this->spec1 = $mcvalues['spec1'];
        $this->spec2 = $mcvalues['spec2'];
        $this->spec3 = $mcvalues['spec3'];
        $this->spec4 = $mcvalues['spec4'];


        $this->initializeParts($parts);


//**** Parts ****//
        $this->sgSSMesh = $this->mc_parts['34']['price'];
        $this->grille7mm = $this->mc_parts['36']['price'];
        $this->petMesh = $this->mc_parts['49']['price'];
        $this->insectMesh = $this->mc_parts['48']['price'];
        $this->perfAliMesh = $this->mc_parts['35']['price'];


        $this->secWinFrame = $this->mc_parts['38']['price'];
        $this->secDoorFrame = $this->mc_parts['37']['price'];

        $this->dgDoorFrame = $this->mc_parts['40']['price'];
        $this->dgWindowFrame = $this->mc_parts['41']['price'];

        $this->flyFrame = $this->mc_parts['42']['price'];

        $this->winCnrStake = $this->mc_parts['44']['price'];
        $this->doorCnrStake = $this->mc_parts['43']['price'];

        $this->cnrStakeFFrame = $this->mc_parts['51']['price'];

        $this->PVCLSeat = $this->mc_parts['46']['price'];
        $this->PVCWedge = $this->mc_parts['47']['price'];

        $this->rollerHinges = $this->mc_parts['52']['price'];

        $this->singleLock = $this->mc_parts['53']['price'];
        $this->tripleHngd = $this->mc_parts['54']['price'];
        $this->tripleSliding = $this->mc_parts['55']['price'];

        $this->spline = $this->mc_parts['50']['price'];

        $this->perfSheetFixingBead = $this->mc_parts['45']['price'];


        /**Midrail parts**/
        $this->midrailPart = $this->mc_parts['39']['price'];
        $this->crossBrace = 1.50;


        /** Master Markups **/
        $this->secPerf_dist = $mcvalues['secperf_dist'];
        $this->dgfibr_dist = $mcvalues['dgfibr_dist'];

        $this->secperf_whsl = $mcvalues['secperf_whsl'];
        $this->dgfibr_whsl = $mcvalues['dgfibr_whsl'];

        $this->secperf_re = $mcvalues['secperf_re'];
        $this->dgfibr_re = $mcvalues['dgfibr_re'];

    }


    private function initializeParts($parts)
    {
        foreach ($parts as $part) {
            $id = $part->id;
            $title = $part->title;
            $price = $part->users_parts[0]->price_per_unit;
            $part_number = $part->part_number;

            if ($part->show_in_additional_section_dropdown) {
                $this->additionals_m[$title] = $price;
            }
            if ($part->show_in_additional_section_by_length_dropdown) {
                $this->additionals_l[$title] = $price;
            }
            if ($part->show_in_accessories_dropdown) {
                $this->accessories[$title] = $price;
            }
            if ($part->master_calculator_value) {
                $this->mc_parts[$id] = ['title' => $title, 'price' => $price, 'part_number' => $part_number];
            }
        }
    }


    private function getMasterMarkupByRole($role, $secDgFibre)
    {
        $masterMarkup = 0;
        switch ($secDgFibre) {
            case 'Security':
            case 'Perf Ali':
                if ($role == 'distributor') {
                    $masterMarkup = $this->secPerf_dist;
                } else if ($role == 'wholesaler') {
                    $masterMarkup = $this->secperf_whsl;
                } else if ($role == 'retailer') {
                    $masterMarkup = $this->secperf_re;
                }
                break;
            case 'D/Grille':
            case 'Fibre':
                if ($role == 'distributor') {
                    $masterMarkup = $this->dgfibr_dist;
                } else if ($role == 'wholesaler') {
                    $masterMarkup = $this->dgfibr_whsl;
                } else if ($role == 'retailer') {
                    $masterMarkup = $this->dgfibr_re;
                }
                break;
        }
        return $masterMarkup;
    }

    private function getRole()
    {
        $role = $this->quote['role'];
        $mfrole = $this->quote['mfrole'];

        if ($role == 'distributor' || $mfrole == 'distributor') {
            return 'distributor';
        } else if ($role == 'wholesaler' || $mfrole == 'wholesaler') {
            return 'wholesaler';
        } else if ($role == 'retailer' || $mfrole == 'retailer') {
            return 'retailer';
        }
        return null;
    }


    private function getHourlyRate($secdgfibr, $winDoor)
    {
        $hourlyRate = 0;

        if ($secdgfibr && $winDoor) {
            if ($secdgfibr == 'Security' && $winDoor == 'Door') {
                $hourlyRate = $this->sdHrlyRate;
            } else if ($secdgfibr == 'Security' && $winDoor == 'Window') {
                $hourlyRate = $this->swHrlyRate;
            } else if ($secdgfibr == 'D/Grille' && $winDoor == 'Door') {
                $hourlyRate = $this->ddHrlyRate;
            } else if ($secdgfibr == 'D/Grille' && $winDoor == 'Window') {
                $hourlyRate = $this->dwHrlyRate;
            } else if ($secdgfibr == 'Fibre' && $winDoor == 'Door') {
                $hourlyRate = $this->fdHrlyRate;
            } else if ($secdgfibr == 'Fibre' && $winDoor == 'Window') {
                $hourlyRate = $this->fwHrlyRate;
            } else if ($secdgfibr == 'Perf Ali' && $winDoor == 'Door') {
                $hourlyRate = $this->pdHrlyRate;
            } else if ($secdgfibr == 'Perf Ali' && $winDoor == 'Window') {
                $hourlyRate = $this->pwHrlyRate;
            }
        }
        return $hourlyRate;

    }


    private function getTitleByValue($value)
    {
        $index = array_search($value, array_column($this->mc_parts, 'price'));

        $numeric_indexed_array = array_values($this->mc_parts);
        $title = ($numeric_indexed_array[$index]['title']);
        $part_number = ($numeric_indexed_array[$index]['part_number']);

        return [$title, $part_number];
    }



    private function fillStocks($value, $type)
    {
        $entity = $this->stocks->newEntity();
        $entity->metakey = $this->getTitleByValue($value)[0];
        $entity->part_number = $this->getTitleByValue($value)[1];
        $entity->type = $type;
        $this->stockMetas[] = $entity;
    }


}