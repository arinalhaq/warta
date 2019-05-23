<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "advertise".
 *
 * @property int $id_ads
 * @property string $title
 * @property string $content
 * @property string $advertiser
 * @property string $startdate
 * @property string $enddate
 */
class Advertise extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'advertise';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'content', 'advertiser', 'startdate', 'enddate'], 'required'],
            [['content'], 'string'],
            [['startdate', 'enddate'], 'safe'],
            [['title', 'advertiser'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_ads' => 'Id Ads',
            'title' => 'Title',
            'content' => 'Content',
            'advertiser' => 'Advertiser',
            'startdate' => 'Startdate',
            'enddate' => 'Enddate',
        ];
    }
}
