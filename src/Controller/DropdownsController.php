<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\Event;

/**
 * Dropdowns Controller
 *
 * @property \App\Model\Table\DropdownsTable $Dropdowns
 */
class DropdownsController extends AppController
{


    public function beforeFilter(Event $event)
    {
        parent::beforeFilter($event);
        // Allow users to register and logout.
        // You should not add the "login" action to allow list. Doing so would
        // cause problems with normal functioning of AuthComponent.
        if ($this->Auth->user()) {
            $this->Auth->allow(['index', 'delete']);
        }

    }

    public function initialize()
    {
        parent::initialize();

        $this->loadComponent('Flash'); // Include the FlashComponent

        $this->viewBuilder()->layout('pantherpro-in');

    }


    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->authorize(['manufacturer']);

        $dropdowns = $this->Dropdowns->find('all')->orderAsc('name');

        if ($this->request->is(['patch', 'post', 'put'])) {

            $dropdown = $this->Dropdowns->newEntity();
            $dropdown = $this->Dropdowns->patchEntity($dropdown, $this->request->data);

            if ($this->Dropdowns->save($dropdown)) {
                $this->Flash->success(__('The dropdown values has been updated.'));
            } else {
                $this->Flash->error(__('The new option could not be saved. Please, try again.'));
            }
        }

        $this->set(compact('dropdowns'));
        $this->set('_serialize', ['dropdowns']);
    }

    /**
     * View method
     *
     * @param string|null $id Dropdown id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $dropdown = $this->Dropdowns->get($id, [
            'contain' => []
        ]);

        $this->set('dropdown', $dropdown);
        $this->set('_serialize', ['dropdown']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $dropdown = $this->Dropdowns->newEntity();
        if ($this->request->is('post')) {
            $dropdown = $this->Dropdowns->patchEntity($dropdown, $this->request->data);
            if ($this->Dropdowns->save($dropdown)) {
                $this->Flash->success(__('The dropdown has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The dropdown could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('dropdown'));
        $this->set('_serialize', ['dropdown']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Dropdown id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $dropdown = $this->Dropdowns->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $dropdown = $this->Dropdowns->patchEntity($dropdown, $this->request->data);
            if ($this->Dropdowns->save($dropdown)) {
                $this->Flash->success(__('The dropdown has been saved.'));

                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The dropdown could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('dropdown'));
        $this->set('_serialize', ['dropdown']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Dropdown id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete()
    {
        $this->authorize(['manufacturer']);

        $this->request->allowMethod(['post', 'delete']);
        $dropdown = $this->Dropdowns->get($this->request->data['id']);
        if ($this->Dropdowns->delete($dropdown)) {
            $this->Flash->success(__('The value has been deleted.'));
        } else {
            $this->Flash->error(__('The option could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
