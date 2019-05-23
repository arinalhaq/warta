<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\NewsSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="news-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id_news') ?>

    <?= $form->field($model, 'id_post') ?>

    <?= $form->field($model, 'status_news') ?>

    <?= $form->field($model, 'likes') ?>

    <?= $form->field($model, 'views') ?>

    <?php // echo $form->field($model, 'date') ?>

    <?php // echo $form->field($model, 'id_editor') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
