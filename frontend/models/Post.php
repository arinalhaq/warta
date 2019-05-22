<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "post".
 *
 * @property int $id_post
 * @property int $id_user
 * @property string $title
 * @property string $content
 * @property string $created_at
 * @property string $update_at
 * @property int $is_premium
 * @property int $id_category
 * @property int $id_location
 *
 * @property News[] $news
 * @property User $user
 * @property Category $category
 * @property Location $location
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
            [['id_user', 'title', 'content', 'created_at', 'update_at', 'is_premium', 'id_category', 'id_location'], 'required'],
            [['id_user', 'is_premium', 'id_category', 'id_location'], 'integer'],
            [['content'], 'string'],
            [['created_at', 'update_at'], 'safe'],
            [['title'], 'string', 'max' => 255],
            [['id_user'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['id_user' => 'id_user']],
            [['id_category'], 'exist', 'skipOnError' => true, 'targetClass' => Category::className(), 'targetAttribute' => ['id_category' => 'id_category']],
            [['id_location'], 'exist', 'skipOnError' => true, 'targetClass' => Location::className(), 'targetAttribute' => ['id_location' => 'id_location']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_post' => 'Id Post',
            'id_user' => 'Id User',
            'title' => 'Title',
            'content' => 'Content',
            'created_at' => 'Created At',
            'update_at' => 'Update At',
            'is_premium' => 'Is Premium',
            'id_category' => 'Id Category',
            'id_location' => 'Id Location',
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
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id_user' => 'id_user']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id_category' => 'id_category']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLocation()
    {
        return $this->hasOne(Location::className(), ['id_location' => 'id_location']);
    }
}
