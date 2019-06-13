<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Category;
use backend\models\Location;
use backend\models\User;

/* @var $this yii\web\View */
/* @var $model backend\models\Post */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Posts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="post-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_post], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_post], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?= Html::a('Publish', ['publish', 'id' => $model->id_post], [
            'class' => 'btn btn-info',
            'data' => [
                'confirm' => 'Are you sure you want to approve this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?php if($model->status == 1){
        $status = 'published';
    } else {
        $status = 'unpublished';
    }
    ?>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_post',
            [
                'attribute'=>'user',
                'value'=>User::findOne($model->id_user)->username,
            ],
            'title',
            // 'content:ntext',
            'created_at:datetime',
            'updated_at:datetime',
            // 'status',
            [
                'attribute' => 'status',
                'value' => $status,
            ],
            [
                'attribute'=>'category',
                'value'=>Category::findOne($model->id_category)->category,
            ],
            [
                'attribute'=>'location',
                'value'=>Location::findOne($model->id_location)->city,
            ],
            // 'id_location',
            'image',
        ],
    ]) ?>



</div>

<div id="content">
    <?php echo $model->content ?>
</div>

