<?php

namespace backend\assets;

use yii\web\AssetBundle;

/**
 * Main backend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    // public $sourcePath = '@vendor/myasset';
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
        'css/style.css',
        'css/component.css',
        'css/normalize.css',
        // 'css/bootstrap.min.css',
        // 'css/jquery.mCustomScrollbar.min.css',
        // 'css/style2.css',
        // 'css/demo.css',
    ];
    public $js = [
        'js/classie.js',
        'js/gnmenu.js',
        'js/modernizr.custom.js',
        // 'js/ckeditor.js',
        // 'js/ckeditor.js.map',
        // 'js/bootstrap.min.js',
        // 'js/jquery.mCustomScrollbar.concat.min.js',
        // 'js/popper.min.js',
        // 'js/solid.js',
        // 'js/fontawesome.js',
        // 'js/jquery-3.3.1.slim.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
