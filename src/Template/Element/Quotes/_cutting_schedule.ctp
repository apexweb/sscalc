<div class="card-box cuttings-customer-info font-13">




    <p>
        <span>Created By: </span><span class="big-span"><?= h($quote->user->username) ?></span>
        <span class="width-100 inline-block"></span>
        <span>Cust. Order No. </span> <span class="big-span"><?= h($quote->qId) ?></span>
        <span class="width-100 inline-block"></span>
        <span>Date Order Placed: </span>
        <?php
        if ($quote->created != null) {
            echo '<span class="big-span">' . h($quote->created) . '</span>';
        }
        ?>
    </p>


    <p>
        <span>Notes to Manufacturer: </span>
        <span class="big-span"><?= h($quote->notes_manufacturer) ?></span>
    </p>
</div>

<div class="card-box table-responsive">
    <table class="table table-bordered cuttings-table small-padding">
        <!--          15  -->
        <tr>
            <th class="vertical-middle"><?= h($quote->created->format('d/m/Y')) ?></th>
            <th colspan="9" class="text-center"><span class="font-18"><b><?= h($quote->customer_name) ?></b></span></th>
            <th colspan="6"></th>
        </tr>

        <tr>
            <td>

            </td>
            <td colspan="4" class="vertical-middle text-center">
                EXTRUSION
            </td>
            <td colspan="8">
                <?php if ($quote->standard) {
                    echo '<p class="no-margin">' . h($quote->standard_color) . '</p>';
                }
                ?>
                <?php if ($quote->color1) {
                    echo '<p class="no-margin">' . h($quote->color1_color) . '</p>';
                }
                ?>
                <?php if ($quote->color2) {
                    echo '<p class="no-margin">' . h($quote->color2_color) . '</p>';
                }
                ?><?php if ($quote->color3) {
                    echo '<p class="no-margin">' . h($quote->color3_color) . '</p>';
                }
                ?><?php if ($quote->color4) {
                    echo '<p class="no-margin">' . h($quote->color4_color) . '</p>';
                }
                ?>
            </td>
            <td colspan="3" class="text-center vertical-middle">SECOND POWDERCOAT REQUIRED:
                <span style="color: #161616;">
                    <?php if ($quote->second_color_required) {
                        echo 'YES';
                    } else {
                        echo 'NO';
                    } ?>
                </span>
            </td>
        </tr>


        <tr>
            <th>ITEM</th>
            <th class="width-50">PANEL QTY</th>
            <th colspan="2" class="width-250">CONFIGURATION</th>
            <th>WIN OR DOOR</th>
            <th>FRAME</th>
            <th>QTY</th>
            <th></th>
            <th>HEIGHT</th>
            <th>QTY</th>
            <th></th>
            <th>WIDTH</th>
            <th class="width-100">LOCK TYPE</th>
            <th>HANDLE HEIGHT</th>
            <th class="width-250">LOCATION / NOTES / COLOURS</th>
            <th>LOCK QTY</th>
        </tr>

        <?php
        $locks_qty_sum = 0;
        $total_sum_door = 0;
        $total_sum_window = 0;
        ?>

        <?php foreach ($quote['products'] as $product): ?>
            <?php if ($product->product_qty > 0): ?>
                <tr>
                    <?php
                    $qty_2 = 0;
                    $qty_2 = $product->product_qty * 2;
                    ?>
                    <td><?= h($product->product_item_number) ?></td>
                    <td><?= h($product->product_qty) ?></td>
                    <td><?= h($product->product_configuration) ?></td>
                    <td><?= h($product->product_sec_dig_perf_fibr) ?></td>
                    <td><?= h($product->product_window_or_door) ?></td>
                    <td><?= h($product->product_window_frame_type) ?></td>
                    <td class="text-right"><?= $qty_2 ?></td>
                    <td>x</td>
                    <td><?= h($product->product_height) ?></td>
                    <td class="text-right"><?= $qty_2 ?></td>
                    <td>x</td>
                    <td><?= h($product->product_width) ?></td>
                    <td><?= h($product->product_lock_type) ?></td>
                    <td><?= h($product->product_lock_handle_height) ?></td>
                    <td><?= h($product->product_location_in_building) ?></td>

                    <td><?= h($product->product_number_of_locks) ?></td>
                    <?php
                    $locks_qty_sum += $product->product_number_of_locks;
                    if ($product->product_window_or_door == 'Door') {
                        $total_sum_door += $product->product_qty;
                    } elseif ($product->product_window_or_door == 'Window') {
                        $total_sum_window += $product->product_qty;
                    }
                    ?>
                </tr>
            <?php endif; ?>

        <?php endforeach; ?>

        <tr>
            <td colspan="16"></td>
        </tr>

        <?php foreach ($quote['midrails'] as $midrail): ?>
            <?php if ($midrail->midrail_qty > 0): ?>
                <tr>
                    <td colspan="3"></td>
                    <th colspan="2">Width</th>
                    <td><?= h($midrail->midrail_width) ?></td>
                    <th colspan="2">Height</th>
                    <td><?= h($midrail->midrail_height) ?></td>
                    <th colspan="2">Rail</th>
                    <td>
                        <?php
                        if ($midrail->midrail_sec_dig_perf_fibr == 'Security' && $midrail->midrail_window_or_door == 'Door') {
                            $product_rail = $midrail->midrail_width - 120 + $midrail->midrail_height - 120;
                            echo $product_rail;
                        } else if ($midrail->midrail_sec_dig_perf_fibr == 'Security' && $midrail->midrail_window_or_door == 'Window') {
                            $product_rail = $midrail->midrail_width - 75 + $midrail->midrail_height - 75;
                            echo $product_rail;
                        } else {
                            echo 0;
                        }
                        ?>
                    </td>
                    <td>Cover</td>
                    <td>
                        <?php
                        if ($midrail->midrail_sec_dig_perf_fibr == 'Security' && $midrail->midrail_window_or_door == 'Door') {
                            $product_cover = $midrail->midrail_width - 154 + $midrail->midrail_height - 154;
                            echo $product_cover;
                        } else if ($midrail->midrail_sec_dig_perf_fibr == 'Security' && $midrail->midrail_window_or_door == 'Window') {
                            $product_cover = $midrail->midrail_width - 105 + $midrail->midrail_height - 105;
                            echo $product_cover;
                        } else {
                            echo 0;
                        }
                        ?>
                    </td>
                    <td colspan="2"></td>
                </tr>
            <?php endif; ?>
        <?php endforeach; ?>

        <tr>
            <td colspan="15"></td>
            <th>
                <?= $locks_qty_sum; ?>
            </th>
        </tr>

    </table>
</div>


<div class="row">
    <div class="col-md-3">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered quote-installsheet small-padding">
                    <tr>
                        <th class="width-50">ITEM NO</th>
                        <th class="width-50">PER METER</th>
                        <th>ADDITIONAL SECTION</th>
                    </tr>

                    <?php foreach ($quote['additionalpermeters'] as $additionalpermeter): ?>
                        <?php if ($additionalpermeter->additional_per_meter > 0): ?>
                            <tr>
                                <td><?= h($additionalpermeter->additional_item_number); ?></td>
                                <td><?= h($additionalpermeter->additional_per_meter) ?></td>
                                <td><?= h($additionalpermeter->additional_name) ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </div>

    <div class="col-md-3">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered quote-installsheet small-padding">
                    <tr>
                        <th class="width-50">ITEM NO</th>
                        <th class="width-50">PER FULL LENGTH</th>
                        <th>ADDITIONAL SECTION</th>
                    </tr>

                    <?php foreach ($quote['additionalperlength'] as $additionalperlength): ?>
                        <?php if ($additionalperlength->additional_per_length > 0): ?>
                            <tr>
                                <td><?= h($additionalperlength->additional_item_number); ?></td>
                                <td><?= h($additionalperlength->additional_per_length) ?></td>
                                <td><?= h($additionalperlength->additional_name) ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </div>

    <div class="col-md-3">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered quote-installsheet small-padding">
                    <tr>
                        <th class="width-50">ITEM NO</th>
                        <th class="width-50">EACH</th>
                        <th>ACCESSORIES</th>
                    </tr>

                    <?php foreach ($quote['accessories'] as $accessory): ?>
                        <?php if ($accessory->accessory_each > 0): ?>
                            <tr>
                                <td><?= h($accessory->accessory_item_number) ?></td>
                                <td><?= h($accessory->accessory_each) ?></td>
                                <td><?= h($accessory->accessory_name) ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </div>


    <div class="col-md-3">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered quote-installsheet small-padding">
                    <tr>
                        <th class="width-50">QTY</th>
                        <th>CUSTOM ITEM</th>
                    </tr>

                    <?php foreach ($quote['customitems'] as $customitem): ?>
                        <?php if ($customitem->custom_qty > 0 && $customitem->custom_tick): ?>
                            <tr>
                                <td><?= h($customitem->custom_qty) ?></td>
                                <td><?= h($customitem->custom_description) ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    </div>


    <?php
    //  Calculating FRAME AND COMPONENTS
    $sum_door = 0;
    $sum_window = 0;
    $door_cnr_stakes = 0;
    $win_cnr_stakes = 0;
    $lmm_sum = 0;


    foreach ($quote['products'] as $product) {
        $qty = $product->product_qty * 2;
        $lmm = $qty * $product->product_width + $qty * $product->product_height;
        $lmm_sum += $lmm;
        if ($product->product_window_or_door == 'Window') {
            $sum_window += ($lmm / 1000);
            $win_cnr_stakes += $qty * 2;
        } else if ($product->product_window_or_door == 'Door') {
            $sum_door += ($lmm / 1000);
            $door_cnr_stakes += $qty * 2;
        }
    }

    $sum_door = $sum_door * 110 / 100;
    $sum_window = $sum_window * 110 / 100;

    ?>

    <div class="col-md-6">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered small-padding">
                    <tr>
                        <th class="text-center" colspan="4">FRAME AND COMPONENTS REQUIRED</th>
                    </tr>

                    <tr>
                        <th colspan="2">ScreenGuard Window Frame</th>
                        <td>Incl 10% extra</td>
                        <td><?= number_format($sum_window / 5.5, 1, '.', ''); ?></td>
                        <input type="hidden" name="sg_win_frame"
                               value="<?php echo number_format($sum_window / 5.5, 1, '.', ''); ?>">
                    </tr>

                    <!--                    <tr>-->
                    <!--                        <th colspan="2">Insect Frame</th>-->
                    <!--                        <td>Incl 10% extra</td>-->
                    <!--                        <td>0</td>-->
                    <!--                    </tr>-->

                    <tr>
                        <th colspan="2">Door Frame</th>
                        <td>Incl 10% extra</td>
                        <td><?= number_format($sum_door / 6, 1, '.', ''); ?></td>
                        <input type="hidden" name="door_frame"
                               value="<?php echo number_format($sum_door / 6, 1, '.', ''); ?>">
                    </tr>

                    <tr>
                        <th colspan="3">Door Corner Stakes</th>
                        <td><?= number_format($door_cnr_stakes, 1, '.', ''); ?></td>
                        <input type="hidden" name="door_cnr_stakes"
                               value="<?php echo number_format($door_cnr_stakes, 1, '.', ''); ?>">
                    </tr>

                    <tr>
                        <th colspan="3">Window Corner Stakes</th>
                        <td><?= number_format($win_cnr_stakes, 1, '.', ''); ?></td>
                        <input type="hidden" name="win_cnr_stakes"
                               value="<?php echo number_format($win_cnr_stakes, 1, '.', ''); ?>">
                    </tr>

                    <tr>
                        <th>Wedging Block Mtrs</th>
                        <td><?= number_format($lmm_sum / 1000, 1, '.', ''); ?></td>
                        <input type="hidden" name="wedging_block_meters"
                               value="<?php echo number_format($lmm_sum / 1000, 1, '.', ''); ?>">
                        <th>Rolls</th>
                        <td><?= number_format($lmm_sum / 1000 / 50, 2, '.', ''); ?></td>
                        <input type="hidden" name="rolls"
                               value="<?php echo number_format($lmm_sum / 1000 / 50, 2, '.', ''); ?>">
                    </tr>

                </table>
            </div>
        </div>
    </div>

    <div class="col-md-9">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered small-padding">
                    <tr>
                        <th colspan="9" class="text-center"><?= h($quote->customer_name) ?></th>
                    </tr>

                    <tr>
                        <th class="text-center" colspan="9">MESH</th>
                    </tr>

                    <tr>
                        <th colspan="2"></th>
                        <th>SEC - DG FIBRE</th>
                        <th></th>
                        <th>QTY</th>
                        <th></th>
                        <th>HEIGHT</th>
                        <th></th>
                        <th>WIDTH</th>
                    </tr>

                    <?php foreach ($quote['products'] as $product): ?>

                        <tr>
                            <td><?= h($product->product_item_number) ?></td>
                            <td><?= h($product->product_qty) ?></td>
                            <td><?= h($product->product_sec_dig_perf_fibr) ?></td>
                            <td><?= h($product->product_316_ss_gal_pet) ?></td>
                            <td><?= h($product->product_qty) ?></td>
                            <td>x</td>
                            <td><?php

                                if ($product->product_sec_dig_perf_fibr == 'Security') {
                                    if ($product->product_window_or_door == 'Door') {
                                        echo $product->product_height - 105;
                                    } else if ($product->product_window_or_door == 'Window') {
                                        echo $product->product_height - 52;
                                    }
                                } else if ($product->product_sec_dig_perf_fibr == 'D/Grille') {
                                    if ($product->product_window_or_door == 'Door') {
                                        echo $product->product_height - 128;
                                    } else if ($product->product_window_or_door == 'Window') {
                                        echo $product->product_height - 76;
                                    }
                                }

                                ?>
                            </td>

                            <td>x</td>

                            <td><?php

                                if ($product->product_sec_dig_perf_fibr == 'Security') {
                                    if ($product->product_window_or_door == 'Door') {
                                        echo $product->product_width - 106;
                                    } else if ($product->product_window_or_door == 'Window') {
                                        echo $product->product_width - 52;
                                    }
                                } else if ($product->product_sec_dig_perf_fibr == 'D/Grille') {
                                    if ($product->product_window_or_door == 'Door') {
                                        echo $product->product_width - 128;
                                    } else if ($product->product_window_or_door == 'Window') {
                                        echo $product->product_width - 76;
                                    }
                                }
                                ?>
                            </td>

                        </tr>

                    <?php endforeach; ?>


                </table>
            </div>
        </div>
    </div>




    <div class="col-md-7 col-md-offset-2 col-sm-offset-0">
        <div class="panel panel-default panel-border">
            <div class="panel-body">
                <table class="table table-bordered table-bold table-striped small-padding">

                    <tr>
                        <th style="font-size: 18px;" class="text-center" colspan="4">SCREENGUARD JOB SHEET</th>

                    </tr>

                    <tr>
                        <th>DATE:</th>
                        <td><?= h($quote->created->format('d/m/Y')) ?></td>
                        <th>DATE REQUIRED:</th>
                        <td>
                            <?php
                            if ($quote->required_date != null) {
                                echo '<span>' . h($quote->required_date) . '</span>';
                            }
                            ?>
                        </td>

                    </tr>

                    <tr>
                        <th>CUSTOMER NAME:</th>
                        <td colspan="3"><?= h($quote->customer_name) ?></td>
                    </tr>

                    <tr>
                        <th>CUSTOMER ORDER NO.</th>
                        <td colspan="3"><?= h($quote->qId); ?></td>
                    </tr>

                    <tr>
                        <th colspan="1">QTY</th>
                        <th colspan="3">DESCRIPTION OF GOODS</th>
                    </tr>


                    <tbody style="font-size: 13px;">

                    <tr>
                        <th colspan="4">Panels</th>
                    </tr>

                    <tr>
                        <td><?= $total_sum_door ?></td>
                        <td colspan="3">Doors</td>
                    </tr>
                    <tr>
                        <td><?= $total_sum_window ?></td>
                        <td colspan="3">Windows</td>
                    </tr>

                    <tr>
                        <th colspan="4" class="text-center">ADDITIONAL SECTIONS PER METER</th>
                    </tr>

                    <?php foreach ($quote['additionalpermeters'] as $additionalpermeter): ?>
                        <?php if ($additionalpermeter->additional_per_meter > 0): ?>
                            <tr>
                                <td><?= h($additionalpermeter->additional_per_meter) ?></td>
                                <td colspan="3"><?= h($additionalpermeter->additional_name) ?></td>
                            </tr>

                        <?php endif; ?>

                    <?php endforeach; ?>

                    <tr>
                        <th colspan="4" class="text-center">ADDITIONAL SECTIONS PER LENGTH</th>
                    </tr>

                    <?php foreach ($quote['additionalperlength'] as $additionalperlength): ?>
                        <?php if ($additionalperlength->additional_per_length > 0): ?>
                            <tr>
                                <td><?= h($additionalperlength->additional_per_length) ?></td>
                                <td colspan="3"><?= h($additionalperlength->additional_name) ?></td>
                            </tr>

                        <?php endif; ?>

                    <?php endforeach; ?>

                    <tr>
                        <th colspan="4" class="text-center">CUSTOM ITEM</th>
                    </tr>

                    <?php foreach ($quote['customitems'] as $customitem): ?>
                        <?php if ($customitem->custom_qty > 0 && $customitem->custom_tick): ?>
                            <tr>
                                <td><?= h($customitem->custom_qty) ?></td>
                                <td colspan="3"><?= h($customitem->custom_description) ?></td>
                            </tr>
                        <?php endif; ?>

                    <?php endforeach; ?>

                    <tr>
                        <th colspan="4" class="text-center">ACCESSORIES</th>
                    </tr>

                    <?php foreach ($quote['accessories'] as $accessory): ?>
                        <?php if ($accessory->accessory_each > 0): ?>
                            <tr>
                                <td><?= h($accessory->accessory_each) ?></td>
                                <td colspan="3"><?= h($accessory->accessory_name) ?></td>
                            </tr>

                        <?php endif; ?>

                    <?php endforeach; ?>


                    </tbody>
                    <tr>
                        <th>Date Completed
                        </th>
                        <td colspan="3"></td>
                    </tr>

                    <tr>
                        <th>Panels No.s
                        </th>
                        <td colspan="3"></td>
                    </tr>

                    <tr>
                        <th>Additional Sections Per Meter
                        </th>
                        <td colspan="3"></td>
                    </tr>

                    <tr>
                        <th>Additional Sections Per Length
                        </th>
                        <td colspan="3"></td>
                    </tr>


                    <tr>
                        <th>Accessories
                        </th>
                        <td colspan="3"></td>
                    </tr>

                    <tr>
                        <th>Signed Off By
                        </th>
                        <td colspan="3"></td>
                    </tr>


                </table>
            </div>
        </div>
    </div>
</div> <!-- .row -->