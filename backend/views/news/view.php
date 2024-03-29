<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Post;

/* @var $this yii\web\View */
/* @var $model backend\models\News */

$this->title = $model->id_news;
$this->params['breadcrumbs'][] = ['label' => 'News', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="news-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id_news], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id_news], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id_news',
            'id_post',
            'status_news',
            // 'likes',
            // 'views',
            'date',
            'id_editor',
        ],
    ]) ?>

</div>

<div>
    <?php echo Post::findOne($model->id_post)->content ?>
</div>
