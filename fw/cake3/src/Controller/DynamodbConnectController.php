<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Core\Configure;
use Aws\Sdk;

/**
 * DynamodbConnect Controller
 *
 *
 * @method \App\Model\Entity\DynamodbConnect[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class DynamodbConnectController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index()
    {
        $sdk = new Sdk(
            Configure::read('AWS.dynamodb')
        );

        $dynamodb = $sdk->createDynamoDb();

        $tableName = 'users';
        $result = $dynamodb->createTable([
            'TableName' => $tableName,
            'AttributeDefinitions' => [
                [ 'AttributeName' => 'Id', 'AttributeType' => 'N' ]
            ],
            'KeySchema' => [
                [ 'AttributeName' => 'Id', 'KeyType' => 'HASH' ]
            ],
            'ProvisionedThroughput' => [
                'ReadCapacityUnits'    => 5,
                'WriteCapacityUnits' => 6
            ]
        ]);

        print_r($result->getPath('TableDescription'));
//        echo 'test';
//        $this->set('teststr', 'テスト文章てすてすてす！');
    }

    /**
     * View method
     *
     * @param string|null $id Dynamodb Connect id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $dynamodbConnect = $this->DynamodbConnect->get($id, [
            'contain' => [],
        ]);

        $this->set('dynamodbConnect', $dynamodbConnect);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $dynamodbConnect = $this->DynamodbConnect->newEntity();
        if ($this->request->is('post')) {
            $dynamodbConnect = $this->DynamodbConnect->patchEntity($dynamodbConnect, $this->request->getData());
            if ($this->DynamodbConnect->save($dynamodbConnect)) {
                $this->Flash->success(__('The dynamodb connect has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The dynamodb connect could not be saved. Please, try again.'));
        }
        $this->set(compact('dynamodbConnect'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Dynamodb Connect id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $dynamodbConnect = $this->DynamodbConnect->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $dynamodbConnect = $this->DynamodbConnect->patchEntity($dynamodbConnect, $this->request->getData());
            if ($this->DynamodbConnect->save($dynamodbConnect)) {
                $this->Flash->success(__('The dynamodb connect has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The dynamodb connect could not be saved. Please, try again.'));
        }
        $this->set(compact('dynamodbConnect'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Dynamodb Connect id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $dynamodbConnect = $this->DynamodbConnect->get($id);
        if ($this->DynamodbConnect->delete($dynamodbConnect)) {
            $this->Flash->success(__('The dynamodb connect has been deleted.'));
        } else {
            $this->Flash->error(__('The dynamodb connect could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
