<?php
use \yii\widgets\Pjax;
use yii\helpers\Html;
?>

    timestamp <code><?= $time ?></code>
    <hr>

    <?php Pjax::begin([
        'id'                 => 'pjax1',
        'enablePushState'    => false,
        'enableReplaceState' => false,
        'linkSelector'       => '#pjax1 a',
        'timeout'            => 10000,
    ]) ?>

    timestamp <code><?= $time ?></code> (in pjax container)

    <?php if (empty($like)) { ?>

    <hr>
    <?= Html::a('LIKE', ['site/test-pjax1', 'like' => 1, ]) ?>
    / 
    <?= Html::a('DISLIKE', ['site/test-pjax1', 'like' => -1, ]) ?>

    <?php } else { ?>

        <hr>
        <p>
            <?= ($like == 1) ? 'you like me :)' : 'you do not like me :('; ?>
        </p>

    <?php } ?>


<?php Pjax::end() ?>