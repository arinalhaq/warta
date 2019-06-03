<?php

namespace frontend\controllers;

use Yii;
use frontend\models\Post;
use frontend\models\PostSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use backend\models\News;
use yii\web\UploadedFile;
use yii\filters\AccessControl;

/**
 * PostController implements the CRUD actions for Post model.
 */
class PostController extends Controller
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
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'actions' => ['index', 'create', 'update', 'delete', 'view'],
                        'roles' => ['@'],
                    ],
                ],
            ],
        ];
    }

    /**
     * Lists all Post models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new PostSearch();
        //$model = PostSearch::find()->where(['id_user'=>Yii::$app->user->id]);
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            //'model' => $model,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Post model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Post model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Post();

        $path = 'F:/xampp2/htdocs/advanced/common/assets/upload/';

        if ($model->load(Yii::$app->request->post())) {
            $model->id_user = Yii::$app->user->id;
            $model->file = UploadedFile::getInstance($model, 'file');

            $model->file->saveAs($path . $model->file->baseName . '.' . $model->file->extension);

            $model->image = 'http://localhost/advanced/common/assets/upload/' . $model->file->baseName . '.' . $model->file->extension;
            $model->file = null;

            $model->save(false);
            return $this->redirect(['view', 'id' => $model->id_post]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Post model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        $path = 'F:/xampp2/htdocs/advanced/common/assets/upload/';

        if ($model->load(Yii::$app->request->post())) {
            $model->id_user = Yii::$app->user->id;
            $model->file = UploadedFile::getInstance($model, 'file');

            if ($model->file == null) {
                $model->image = $model->findOne($model->id_user)->image;
            } else {
                $model->file->saveAs($path . $model->file->baseName . '.' . $model->file->extension);

                $model->image = 'http://localhost/advanced/common/assets/upload/' . $model->file->baseName . '.' . $model->file->extension;
                $model->file = null;
            }

            $model->save(false);
            return $this->redirect(['view', 'id' => $model->id_post]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Post model.
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
     * Finds the Post model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Post the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Post::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
