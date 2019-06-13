<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/bootstrap.min.css',
        'css/site.css',
        'css/font-icons.css',
        'css/style.css',
    ];
    public $js = [
        'js/bootstrap.min.js',
        'js/easing.min.js',
        'js/flickity.pkgd.min.js',
        'js/jquery.min.js',
        'js/lazysizes.min.js',
        'js/modernizr.min.js',
        'js/script.js',
        'js/twitterFetcher_min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
