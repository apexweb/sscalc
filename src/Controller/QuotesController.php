<?php
namespace App\Controller;

use App\Calculator;
use Aura\Intl\Exception\CannotFormat;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use CakePdf\Pdf\CakePdf;


/**
 * Quotes Controller
 *
 * @property \App\Model\Table\QuotesTable $Quotes
 * @property \App\Model\Table\ProductsTable $Products
 * @property \App\Model\Table\MidrailsTable $Midrails
 * @property \App\Model\Table\AdditionalpermetersTable $Additionalpermeters
 * @property \App\Model\Table\CustomitemsTable $Customitems
 *
 */
class QuotesController extends AppController
{


    //$$uses = array('Quote', 'Part');


    /**
     * @param Event $event
     */
    public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);
        // Allow users to register and logout.
        // You should not add the "login" action to allow list. Doing so would
        // cause problems with normal functioning of AuthComponent.
        if ($this->Auth->user()) {
            $this->Auth->allow([
                'index',
                'add',
                'edit',
                'delete',
                'roleselect',
                'printout',
                'installsheet',
                'cuttingschedule',
                'invoice',
                'funnelweb',
                'orders',
                'myquotes',
                'markascomplete',
                'markasexpired',
                'setquoted',
                'setprinted',
                'scheduler',
                'cuttingspdf',
                'installsheetpdf',
                'printoutpdf',
                'invoicepdf',
                'funnelwebpdf',
                'pdf'
            ]);
        }

    }


    public function initialize()
    {
        parent::initialize();
    }


    /******************** PDFs *************************/

    private function pdf($id, $name, $orientation)
    {
        $quote = $this->Quotes->get($id, [
            'contain' => [
                'Products' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Midrails' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalpermeters' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalperlength' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Accessories' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Customitems' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Users' => function ($q) {
                    return $q->select(['username', 'avatar', 'firstname', 'lastname']);
                }
            ]
        ]);
        $this->viewBuilder()->options([
            'pdfConfig' => [
                'filename' => $quote->customer_name . '-' . $quote->qId . '.pdf',
                'orientation' => $orientation,
            ]
        ]);
        $this->set('quote', $quote);
    }


    public function cuttingspdf($id = null)
    {
        $this->pdf($id, 'CuttingSchedule', 'landscape');
    }

    function installsheetpdf($id = null)
    {
        $this->pdf($id, 'CheckMeasure-InstallSheet', 'portrait');
    }

    function printoutpdf($id = null)
    {
        $this->pdf($id, 'Printout', 'portrait');
    }

    function invoicepdf($id = null)
    {
        $this->pdf($id, 'Invoice', 'portrait');
    }

    function funnelwebpdf($id = null)
    {
        $this->pdf($id, 'FW', 'portrait');
    }

    /********************END PDF *************************/


    /*** Dist, Re, Whsl's Quotes Page ***/
    public function index()
    {
        $this->authorize(['distributor', 'wholesaler', 'retailer']);
        $search = null;
        $status = null;

        if (isset($this->request->query['search'])) {
            $search = $this->request->query['search'];
        }
        if (isset($this->request->query['status'])) {
            $status = $this->request->query['status'];
        }


        $quotes = $this->Quotes->find('all', ['contain' => [
            'Users' => function ($q) {
                return $q->select(['username']);
            }
        ]])
            ->order(['Quotes.created' => 'DESC']);

        $quotes->where(['status !=' => 'paid']);
        $quotes->where(['user_id' => $this->Auth->user('id')]);


        if ($search != null) {
            $quotes->where(['customer_name LIKE' => '%' . $search . '%']);
        }
        if ($status != null) {
            $quotes->where(['status' => $status]);
        }
        if ($status != 'expired') {
            $quotes->where(['status !=' => 'expired']);
        }


        $this->set(compact('quotes', 'search', 'status'));
        $this->set('_serialize', ['quotes', 'search', 'status']);
    }


    public function printout($id = null)
    {
        $quote = $this->Quotes->get($id, [
            'contain' => [
                'Products' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Midrails' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalpermeters' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalperlength' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Accessories' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Customitems' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Cutsheets' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Users' => function ($q) {
                    return $q->select(['username', 'avatar']);
                }
            ]
        ]);


        $this->set('quote', $quote);
        $this->set('_serialize', ['quote']);
    }


    public function installsheet($id = null)
    {
        $this->printout($id);
    }


    public function cuttingschedule($id = null)
    {
        $this->printout($id);
    }


    public function invoice($id = null)
    {
        $this->authorize(['manufacturer', 'distributor', 'wholesaler', 'retailer']);

        $quote = $this->Quotes->get($id, [
            'contain' => [
                'Products' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Midrails' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalpermeters' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalperlength' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Accessories' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Customitems' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Users' => function ($q) {
                    return $q->select(['username']);
                }
            ]
        ]);


        if ($this->request->is(['patch', 'post', 'put'])) {
            $quote = $this->Quotes->patchEntity($quote, $this->request->data);

            if ($this->Quotes->save($quote)) {
                $this->Flash->success(__('Invoice Updated.'));

            } else {
                $this->Flash->error(__('The inovice could not be updated. Please, try again.'));
            }
        }


        $this->set('quote', $quote);
        $this->set('_serialize', ['quote']);
    }

    public function funnelweb($id = null)
    {
        $this->printout($id);
    }


    /*** Manufacturers Orders Page (Displays All Orders) ***/

    public function orders()
    {
        $this->authorize(['manufacturer']);
        $search = null;
        $status = null;

        if (isset($this->request->query['search'])) {
            $search = $this->request->query['search'];
        }
        if (isset($this->request->query['status'])) {
            $status = $this->request->query['status'];
        }


        $quotes = $this->Quotes->find('all', ['contain' => [
            'Users' => function ($q) {
                return $q->select(['username']);
            }
        ]])
            ->order(['Quotes.created' => 'DESC']);

        $quotes->where(['status !=' => 'pending']);
        $quotes->where(['status !=' => 'expired']);

        $currentUserId = $this->Auth->user('id');
        $quotes->where(['OR' => [['Users.id' => $currentUserId], ['Users.parent_id' => $currentUserId]]]);


        if ($search != null) {
            $quotes->where(['customer_name LIKE' => '%' . $search . '%']);
        }
        if ($status != null) {
            $quotes->where(['status' => $status]);
        }


        $this->set(compact('quotes', 'search', 'status'));
        $this->set('_serialize', ['quotes', 'search', 'status']);
    }


    /**** Displays MF's All Quotes ****/
    public function myquotes()
    {
        $this->authorize(['manufacturer']);
        $search = null;
        $status = null;

        if (isset($this->request->query['search'])) {
            $search = $this->request->query['search'];
        }
        if (isset($this->request->query['status'])) {
            $status = $this->request->query['status'];
        }

        $quotes = $this->Quotes->find('all', ['contain' => [
            'Users' => function ($q) {
                return $q->select(['username']);
            }
        ]])
            ->order(['Quotes.created' => 'DESC']);

        $quotes->where(['user_id' => $this->Auth->user('id')]);

        if ($search != null) {
            $quotes->where(['customer_name LIKE' => '%' . $search . '%']);
        }
        if ($status != null) {
            $quotes->where(['status' => $status]);
        }
        if ($status != 'expired') {
            $quotes->where(['status !=' => 'expired']);
        }


        $this->set(compact('quotes', 'search', 'status'));
        $this->set('_serialize', ['quotes', 'search', 'status']);
    }


    public function scheduler()
    {
        $this->authorize(['manufacturer']);

        $quotes = $this->Quotes->find('all', ['contain' => [
            'Users' => function ($q) {
                return $q->select(['username']);
            }
        ]])
            ->order(['Quotes.created' => 'DESC'])
            ->select(['Quotes.id', 'Quotes.customer_name', 'Quotes.status', 'Quotes.required_date', 'Quotes.orderin_date']);

        $quotes->where(['status !=' => 'pending']);
        $quotes->where(['status !=' => 'expired']);
        $currentUserId = $this->Auth->user('id');
        $quotes->where(['OR' => [['Users.id' => $currentUserId], ['Users.parent_id' => $currentUserId]]]);

        $this->set(compact('quotes'));
        $this->set('_serialize', ['quotes']);
    }


    public function roleselect()
    {
        $this->authorize(['manufacturer']);

        $options = [
            'distributor' => 'Distributor',
            'wholesaler' => 'Wholesaler',
            'retailer' => 'Retailer',
        ];

        if ($this->request->is('post')) {
            $mfrole = $this->request->data['role'];
            if ($mfrole) {
                $this->request->session()->write('mfrole', $mfrole);
                $this->redirect(['action' => 'add']);
            } else {
                $this->Flash->error(_('Role is not selected'));
            }
        }

        $this->set(compact('options'));
        $this->set('_serialize', ['options']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $this->authorize(['manufacturer', 'distributor', 'wholesaler', 'retailer']);
        $role = $this->Auth->user('role');

        if ($role == 'manufacturer') {
            $mfrole = $this->request->session()->read('mfrole');
        }

        $quote = $this->Quotes->newEntity();

        if ($this->request->is('post')) {

            $this->delete_blank_models($this->request->data);

            $quote = $this->Quotes->patchEntity($quote, $this->request->data, [
                'associated' =>
                    ['Products', 'Midrails', 'Additionalpermeters',
                        'Additionalperlength', 'Accessories', 'Customitems', 'Stockmetas', 'Cutsheets']
            ]);


            $quote->user_id = $this->Auth->user('id');
            $quote->role = $role;

            $ordered = false;
            $sendToInstaller = false;

            if ($this->request->data['is_ordered']) {
                $quote->status = 'in progress';
                $quote->orderin_date = (new \DateTime())->format('d/m/Y');
                $ordered = true;
            } else {
                $quote->status = 'pending';
            }

            if ($this->request->data['sendtoinstaller']) {
                $sendToInstaller = true;
            }

            $cal = new Calculator($quote, $this->Auth, $this->Quotes->Stockmetas);
            $stocks = $cal->calculatePrices();


            if ($this->Quotes->save($quote)) {
                $this->Quotes->Stockmetas->link($quote, $stocks);

                if ($ordered) { // SEND EMAILS:
                    $this->orderplaced($quote, $sendToInstaller);
                }
                $this->Flash->success(__('The quote has been saved.'));

                if ($this->Auth->user('role') == 'manufacturer') {
                    return $this->redirect(['action' => 'myquotes']);
                }
                $this->request->session()->delete('mfrole');
                return $this->redirect(['action' => 'index']);

            } else {
                $edit = true;
                $this->Flash->error(__('The quote could not be saved. Please, try again.'));
            }
        }


        $parts = TableRegistry::get('Parts');
        $dropdowns = TableRegistry::get('Dropdowns');
        $mcvaluesTable = TableRegistry::get('Mcvalues');


        $dropdowns = $dropdowns->find('all')->orderAsc('name');
        $parts = $parts->find('all')->contain(['users_parts' => function ($q) {
            $role = $this->Auth->user('role');
            if ($role == 'manufacturer') {
                $userId = $this->Auth->user('id');
            } else {
                $userId = $this->Auth->user('parent_id');
            }
            return $q->where(['user_id' => $userId]);
        }]);


        if ($role == 'manufacturer') {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->Auth->user('id')])->first();
        } else {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->Auth->user('parent_id')])->first();
        }
        if (!$mcvalues) {
            $mcvalues = $mcvaluesTable->newEntity();
        }


        $this->set(compact('quote', 'parts', 'dropdowns', 'mcvalues', 'mfrole', 'edit'));
        //$this->set('_serialize', ['quote', 'parts', 'dropdowns', 'mcvalues', 'mfrole']);
    }


    /**
     * Edit method
     *
     * @param string|null $id Quote id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $this->authorize(['manufacturer', 'distributor', 'wholesaler', 'retailer']);

        $quote = $this->Quotes->get($id, [
            'contain' => [
                'Products' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Midrails' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalpermeters' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Additionalperlength' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Accessories' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Customitems' => [
                    'sort' => ['id' => 'ASC']
                ],
                'Cutsheets' => [
                    'sort' => ['id' => 'ASC']
                ]
            ]
        ]);

        $this->authorizeByModel($quote);

        if ($this->request->is(['patch', 'post', 'put'])) {
            $this->delete_blank_models($this->request->data);

            $ordered = false;
            $isNew = false;
            $sendToInstaller = false;

            if ($this->request->data['is_copied']) {
                $isNew = true;
                $newQuote = $this->Quotes->newEntity();
                $newQuote = $this->Quotes->patchEntity($newQuote, $this->request->data, [
                    'associated' =>
                        ['Products', 'Midrails', 'Additionalpermeters',
                            'Additionalperlength', 'Accessories', 'Customitems', 'Cutsheets']
                ]);

                $newQuote->status = 'pending';
                $newQuote->user_id = $this->Auth->user('id');
                $newQuote->original_id = $quote->id;
                $newQuote->original_qid = $quote->qId;
                $quote = $newQuote;
            } else {
                $this->delete_associations($this->request->data, $quote);
                $oldStatus = $quote->status;
                $quote = $this->Quotes->patchEntity($quote, $this->request->data, [
                    'associated' =>
                        ['Products', 'Midrails', 'Additionalpermeters',
                            'Additionalperlength', 'Accessories', 'Customitems', 'Cutsheets'],
                    'Contain' => ['Stockmetas']
                ]);
                if ($this->Auth->user('role') != 'manufacturer') {
                    $quote->status = $oldStatus;
                }
            }


            if ($this->request->data['is_ordered']) {
                $quote->status = 'in progress';
                $quote->orderin_date = (new \DateTime())->format('d/m/Y');
                $ordered = true;
            }
            if ($this->request->data['sendtoinstaller']) {
                $sendToInstaller = true;
            }

            $Stockmetas = TableRegistry::get('Stockmetas');
            $cal = new Calculator($quote, $this->Auth, $Stockmetas);
            $stocks = $cal->calculatePrices();


            if (!$isNew) {
                $stockId = $Stockmetas->find('all')->where(['quote_id' => $quote->id])->first()['stock_id'];
                foreach ($stocks as $stock) {
                    $stock->stock_id = $stockId;
                    $stock->quote_id = $quote->id;
                }
            }

            if ($this->Quotes->save($quote)) {
                if ($isNew) {
                    $this->Quotes->Stockmetas->link($quote, $stocks);
                } else {
                    $Stockmetas->deleteAll(['quote_id' => $quote->id]);
                    $Stockmetas->saveMany($stocks);

                    if ($ordered) { //SEND EMAILS:
                        $this->orderplaced($quote, $sendToInstaller);
                    }
                }

                $this->Flash->success(__('The quote has been saved.'));

                if ($this->Auth->user('role') == 'manufacturer') {
                    return $this->redirect(['action' => 'myquotes']);
                }
                return $this->redirect(['action' => 'index']);

            } else {
                $this->Flash->error(__('The quote could not be saved. Please, try again.'));
            }
        }


        $parts = TableRegistry::get('Parts');
        $dropdowns = TableRegistry::get('Dropdowns');
        $mcvaluesTable = TableRegistry::get('Mcvalues');

        $dropdowns = $dropdowns->find('all')->orderAsc('name');
        $parts = $parts->find('all')->contain(['users_parts' => function ($q) {
            $role = $this->Auth->user('role');
            if ($role == 'manufacturer') {
                $userId = $this->Auth->user('id');
            } else {
                $userId = $this->Auth->user('parent_id');
            }
            return $q->where(['user_id' => $userId]);
        }]);


        if ($this->Auth->user('role') == 'manufacturer') {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->Auth->user('id')])->first();
        } else {
            $mcvalues = $mcvaluesTable->find('all')->where(['user_id' => $this->Auth->user('parent_id')])->first();
        }
        if (!$mcvalues) {
            $mcvalues = $mcvaluesTable->newEntity();
        }


        $this->set(compact('quote', 'parts', 'dropdowns', 'mcvalues'));
        $this->set('_serialize', ['quote', 'parts', 'dropdowns', 'mcvalues']);
    }


    public function markascomplete($id = null, $page = null)
    {
        $this->authorize(['manufacturer']);
        $this->request->allowMethod(['post', 'patch', 'put']);

        $quote = $this->Quotes->get($id, ['contain' => 'Users']);
        $quote->status = 'complete';

        if ($this->Quotes->save($quote)) {
            $this->sendEmail($quote->user->email, 'customer_order_completed', $quote);
            $this->Flash->success(__('The quote has been updated.'));
        } else {
            $this->Flash->error(__('The quote could not be updated. Please, try again.'));
        }

        return $this->redirect(['action' => $page]);
    }


    public function setquoted($id = null, $page = null)
    {
        $this->request->allowMethod(['post', 'patch', 'put']);
        $quote = $this->Quotes->get($id);

        if ($quote->quoted) {
            $quote->quoted = false;
        } else {
            $quote->quoted = true;
        }

        if ($this->Quotes->save($quote)) {
            $this->Flash->success(__('The quote has been updated.'));
        } else {
            $this->Flash->error(__('The quote could not be updated. Please, try again.'));
        }

        return $this->redirect(['action' => $page]);
    }


    public
    function setprinted($id = null, $page = null)
    {
        $this->request->allowMethod(['post', 'patch', 'put']);
        $quote = $this->Quotes->get($id);

        if ($quote->printed) {
            $quote->printed = false;
        } else {
            $quote->printed = true;
        }

        if ($this->Quotes->save($quote)) {
            $this->Flash->success(__('The quote has been updated.'));
        } else {
            $this->Flash->error(__('The quote could not be updated. Please, try again.'));
        }

        return $this->redirect(['action' => $page]);
    }

    public
    function markasexpired($id = null, $page = null)
    {
        $this->request->allowMethod(['post', 'patch', 'put']);
        $quote = $this->Quotes->get($id);

        $quote->status = 'expired';

        if ($this->Quotes->save($quote)) {
            $this->Flash->success(__('The quote has been marked as expired.'));
        } else {
            $this->Flash->error(__('The quote could not be updated. Please, try again.'));
        }

        return $this->redirect(['action' => $page]);
    }

    /**
     * Delete method
     *
     * @param string|null $id Quote id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public
    function delete($id = null, $page = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $quote = $this->Quotes->get($id);
        if ($this->Quotes->delete($quote)) {
            $this->Flash->success(__('The quote has been deleted.'));
        } else {
            $this->Flash->error(__('The quote could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => $page]);
    }


    private
    function delete_blank_models($data)
    {

        $associates = [
            'products',
            'midrails',
            'additionalpermeters',
            'additionalperlength',
            'accessories',
            'customitems',
            'cutsheets'
        ];

        foreach ($associates as $associated) {
            $hasValue = false;
            $i = 0;
            foreach ($data[$associated] as $associate) {
                foreach ($associate as $key => $value) {
                    if ($key != 'custom_tick' && $key != 'product_emergency_window' && !empty($value)) {
                        //debug($key);
                        $hasValue = true;
                    }
                }
                if (!$hasValue) {
                    unset($this->request->data[$associated][$i]);
                }
                $i++;
                $hasValue = false;
            }
        }
    }


    private
    function delete_associations($data, $quote)
    {
        $product_ids = $data['products_to_delete'];
        $midrail_ids = $data['midrails_to_delete'];
        $additional_m_ids = $data['additional_m_to_delete'];
        $customitem_ids = $data['customitems_to_delete'];
        $cutsheet_ids = $data['cutsheets_to_delete'];

        $product_ids = (explode(',', $product_ids));
        $midrail_ids = (explode(',', $midrail_ids));
        $additional_m_ids = (explode(',', $additional_m_ids));
        $customitem_ids = (explode(',', $customitem_ids));
        $cutsheet_ids = (explode(',', $cutsheet_ids));


        $products = [];
        $midrails = [];
        $additionals = [];
        $customitems = [];
        $cutsheets = [];

        /*****************************************************/

        foreach ($product_ids as $product_id) {
            if (!empty($product_id)) {
                $products[] = $this->Quotes->Products->get($product_id);
            }
        }
        $this->Quotes->Products->unlink($quote, $products);

        /*****************************************************/

        foreach ($midrail_ids as $midrail_id) {
            if (!empty($midrail_id)) {
                $midrails[] = $this->Quotes->Midrails->get($midrail_id);
            }
        }
        $this->Quotes->Midrails->unlink($quote, $midrails);

        /*****************************************************/

        foreach ($additional_m_ids as $additional_m_id) {
            if (!empty($additional_m_id)) {
                $additionals[] = $this->Quotes->Additionalpermeters->get($additional_m_id);
            }
        }
        $this->Quotes->Additionalpermeters->unlink($quote, $additionals);

        /*****************************************************/

        foreach ($customitem_ids as $customitem_id) {
            if (!empty($customitem_id)) {
                $customitems[] = $this->Quotes->Customitems->get($customitem_id);
            }
        }
        $this->Quotes->Customitems->unlink($quote, $customitems);

        /*****************************************************/


        /*****************************************************/

        foreach ($cutsheet_ids as $cutsheet_id) {
            if (!empty($cutsheet_id)) {
                $cutsheets[] = $this->Quotes->Cutsheets->get($cutsheet_id);
            }
        }
        $this->Quotes->Cutsheets->unlink($quote, $cutsheets);

        /*****************************************************/
    }


    private function orderplaced($quote, $sendToInstaller)
    {
        $role = $this->Auth->user('role');
        if ($role == 'manufacturer') {
            $this->sendEmail($this->Auth->user('email'), 'mf_order_placed', $quote);
        } else {
            // Get Parent MF User Email Address:
            $mfemail = $this->Quotes->Users->get($this->Auth->user('parent_id'))['email'];
            $this->sendEmail($mfemail, 'mf_order_placed', $quote);
            $this->sendEmail($this->Auth->user('email'), 'customer_order_placed', $quote);
        }

        if ($sendToInstaller) {
            if ($role == 'manufacturer') {
                $mail = $this->Quotes->Users->find('all')
                    ->where(['parent_id' => $this->Auth->user('id')])
                    ->where(['role' => 'installer'])->first()['email'];
            } else {
                $mail = $this->Quotes->Users->find('all')
                    ->where(['parent_id' => $this->Auth->user('parent_id')])
                    ->where(['role' => 'installer'])->first()['email'];
            }
            $this->sendEmail($mail, 'installer_order_placed', $quote);
        }
    }
}
