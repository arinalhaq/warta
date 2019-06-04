<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use backend\models\Category;
use backend\models\Location;
use backend\models\User;

/* @var $this yii\web\View */
/* @var $model frontend\models\Post */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Posts', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>

<div id="banner"></div>
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
                'attribute' => 'user',
                'value' => User::findOne($model->id_user)->username,
            ],
            'title',
            // 'content:ntext',
            'created_at:datetime',
            'updated_at:datetime',
            [
                'attribute' => 'status',
                'value' => $status,
            ],
            [
                'attribute' => 'category',
                'value' => Category::findOne($model->id_category)->category,
            ],
            [
                'attribute' => 'location',
                'value' => Location::findOne($model->id_location)->city,
            ],
            [
                'attribute' => 'image',
                'value' => $model->image,
                'format' => ['image', ['width' => '100', 'height' => '100']],
            ],
            'image',
        ],
    ]) ?>

</div>

<br><br><br>

<div id="content">
    <b><?php echo Location::findOne($model->id_location)->city ?> - </b>
    <?php echo $model->content ?>
</div>

<style>
    #banner {
        width: 100%;
        height: 400px;
        background-position : center;
        background-image: url('<?php echo $model->image ?>');
        background-repeat: no-repeat;
        background-size: cover;
        border: 1px solid red;
    }

    @media (max-width: 480px) {
        #banner {
            height: 120px;
        }
    }

    @media (max-width: 768px) {
        #banner {
            height: 200px;
        }
    }

    @media (max-width: 992px) {
        #banner {
            height: 250px;
        }
    }
</style>