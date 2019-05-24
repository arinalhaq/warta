<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\AdvertiseSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Advertises';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertise-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Advertise', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id_ads',
            'title',
            'content:ntext',
            'advertiser',
            'startdate',
            //'enddate',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
