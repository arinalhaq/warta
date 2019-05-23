<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "post".
 *
 * @property int $id_post
 * @property int $created_by
 * @property string $title
 * @property string $content
 * @property int $created_at
 * @property int $updated_at
 * @property int $status
 * @property int $id_category
 * @property int $id_location
 * @property string $image
 *
 * @property News[] $news
 * @property Location $location
 * @property Category $category
 */
class Post extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'post';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['created_by', 'title', 'content', 'created_at', 'updated_at', 'status', 'id_category', 'id_location', 'image'], 'required'],
            [['created_by', 'created_at', 'updated_at', 'status', 'id_category', 'id_location'], 'integer'],
            [['content'], 'string'],
            [['title', 'image'], 'string', 'max' => 255],
            [['id_location'], 'exist', 'skipOnError' => true, 'targetClass' => Location::className(), 'targetAttribute' => ['id_location' => 'id_location']],
            [['id_category'], 'exist', 'skipOnError' => true, 'targetClass' => Category::className(), 'targetAttribute' => ['id_category' => 'id_category']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_post' => 'Id Post',
            'created_by' => 'Created By',
            'title' => 'Title',
            'content' => 'Content',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'status' => 'Status',
            'id_category' => 'Id Category',
            'id_location' => 'Id Location',
            'image' => 'Image',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNews()
    {
        return $this->hasMany(News::className(), ['id_post' => 'id_post']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLocation()
    {
        return $this->hasOne(Location::className(), ['id_location' => 'id_location']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id_category' => 'id_category']);
    }
}
