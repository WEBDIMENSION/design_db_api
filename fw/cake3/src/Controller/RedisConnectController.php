<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Cache\Cache;

/**
 * RedisConnect Controller
 *
 *
 * @method \App\Model\Entity\RedisConnect[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class RedisConnectController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
//        $redisConnect = $this->paginate($this->RedisConnect);

//        $this->set(compact('redisConnect'));
        $key = 'bar';
        $foo = 'abc';
        Cache::write($key, $foo);
        $cache = Cache::read($key);
        var_dump($cache); // 'abc'

        $session = $this->request->session();
        $ses = '001';
        $session->write('ses_id', $ses);
        $read_session=$session->read('ses_id');
        var_dump($read_session); // 'abc'
        exit();
    }

    /**
     * View method
     *
     * @param string|null $id Redis Connect id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $redisConnect = $this->RedisConnect->get($id, [
            'contain' => [],
        ]);

        $this->set('redisConnect', $redisConnect);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $redisConnect = $this->RedisConnect->newEntity();
        if ($this->request->is('post')) {
            $redisConnect = $this->RedisConnect->patchEntity($redisConnect, $this->request->getData());
            if ($this->RedisConnect->save($redisConnect)) {
                $this->Flash->success(__('The redis connect has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The redis connect could not be saved. Please, try again.'));
        }
        $this->set(compact('redisConnect'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Redis Connect id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $redisConnect = $this->RedisConnect->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $redisConnect = $this->RedisConnect->patchEntity($redisConnect, $this->request->getData());
            if ($this->RedisConnect->save($redisConnect)) {
                $this->Flash->success(__('The redis connect has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The redis connect could not be saved. Please, try again.'));
        }
        $this->set(compact('redisConnect'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Redis Connect id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $redisConnect = $this->RedisConnect->get($id);
        if ($this->RedisConnect->delete($redisConnect)) {
            $this->Flash->success(__('The redis connect has been deleted.'));
        } else {
            $this->Flash->error(__('The redis connect could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
