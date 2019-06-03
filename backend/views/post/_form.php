<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\ckeditor\CKEditor;
use backend\models\Category;
use backend\models\Location;
use yii\helpers\ArrayHelper;
/* @var $this yii\web\View */
/* @var $model backend\models\Post */
/* @var $form yii\widgets\ActiveForm */
?>

<!-- <?php  
  $baseUrl = Yii::$app->request->baseUrl; 
  
  $this->registerJsFile('@web/js/ckeditor.js');
  $this->registerCssFile('@web/css/component.css');
  $this->registerCssFile('@web/css/normalize.css');
?> -->

<div class="post-form">

    <?php $form = ActiveForm::begin(); ?>



    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'content')->textarea(['maxlength' => true]) ?>
    <!-- <textarea id="post-content" class="form-control" name="Post[content]">

    </textarea> -->


    <?= $form->field($model, 'status')->checkBox(['label' => 'status', 'uncheck' => null, 'checked' => 'checked']);  ?>

    <?= $form->field($model, 'id_category')->dropDownList(ArrayHelper::map(Category::find()->asArray()->all(), 'id_category', 'category')) ?>

    <?= $form->field($model, 'id_location')->dropDownList(ArrayHelper::map(Location::find()->asArray()->all(), 'id_location', 'city'))  ?>

    <?= $form->field($model, 'file')->fileInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<script src="https://cdn.ckeditor.com/ckeditor5/12.0.0/classic/ckeditor.js"></script>

<script>
    ClassicEditor
    .create( document.querySelector( '#post-content' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
</script>