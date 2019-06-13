<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\KomentarSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Komentars';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="komentar-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Komentar', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_comment',
            'content',
            'created_at',
            'updated_at',
            'created_by',
            //'updated_by',
            //'id_news',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
