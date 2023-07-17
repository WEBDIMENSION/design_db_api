<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * RedisTest Controller
 *
 *
 * @method \App\Model\Entity\RedisTest[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class RedisTestController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $redisTest = $this->paginate($this->RedisTest);

        $this->set(compact('redisTest'));
    }

    /**
     * View method
     *
     * @param string|null $id Redis Test id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $redisTest = $this->RedisTest->get($id, [
            'contain' => [],
        ]);

        $this->set('redisTest', $redisTest);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $redisTest = $this->RedisTest->newEntity();
        if ($this->request->is('post')) {
            $redisTest = $this->RedisTest->patchEntity($redisTest, $this->request->getData());
            if ($this->RedisTest->save($redisTest)) {
                $this->Flash->success(__('The redis test has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The redis test could not be saved. Please, try again.'));
        }
        $this->set(compact('redisTest'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Redis Test id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $redisTest = $this->RedisTest->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $redisTest = $this->RedisTest->patchEntity($redisTest, $this->request->getData());
            if ($this->RedisTest->save($redisTest)) {
                $this->Flash->success(__('The redis test has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The redis test could not be saved. Please, try again.'));
        }
        $this->set(compact('redisTest'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Redis Test id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $redisTest = $this->RedisTest->get($id);
        if ($this->RedisTest->delete($redisTest)) {
            $this->Flash->success(__('The redis test has been deleted.'));
        } else {
            $this->Flash->error(__('The redis test could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
