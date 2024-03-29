<?php

namespace frontend\controllers;

use Yii;
use frontend\models\News;
use frontend\models\NewsSearch;
use frontend\models\Komentar;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\data\ActiveDataProvider;
use yii\data\Pagination;
/**
 * NewsController implements the CRUD actions for News model.
 */
class NewsController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all News models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new NewsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single News model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $komentar = new Komentar();
        $model = $this->findModel($id);

        $query = NewsSearch::find()->joinWith('post')->orderBy(['created_at' => SORT_DESC]);
        $count = $query->count();
        //creating the pagination object
        $pagination = new Pagination(['totalCount' => $count, 'defaultPageSize' => 5]);
        //limit the query using the pagination and retrieve the users
        $dataProvider = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();


        if ($komentar->load(Yii::$app->request->post()) && $komentar->save()) {
            return $this->redirect(['view', 'id' => $id]);
        }

        return $this->render('view', [
            'model' => $model,
            'komentar' => $komentar,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Creates a new News model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new News();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_news]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing News model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id_news]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing News model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the News model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return News the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = News::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }

    //likes
    public function actionTestPjax1($id) {
        // try get like per post
        if (!empty($id) && !Yii::$app->user->isGuest) {
            $data = Like::find()->where(['user_id' => Yii::$app->user->id, 'post_id' => $id])->one();
    
            if (!empty($like)) {
                // set from like /dislike
                if (empty($data)) {
                    // new record
                    $data = new Like;
                    $data->post_id = $post_id;
                }
                $data->like = $like;
                $data->save();
            } else {
                // we want to get the current state
                if (!empty($data)) {
                    $like = $data->like;
                }
            }
        } else {
            // error
        }
        return $this->render('test-pjax1', ['like' => $like, 'time' => time()]);
    }
}
