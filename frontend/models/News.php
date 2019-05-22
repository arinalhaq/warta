<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "news".
 *
 * @property int $id_news
 * @property int $id_post
 * @property int $status_news
 * @property int $likes
 * @property int $views
 * @property string $date
 * @property int $id_editor
 *
 * @property Comment[] $comments
 * @property Post $post
 * @property Admin $editor
 */
class News extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_post', 'date'], 'required'],
            [['id_post', 'status_news', 'likes', 'views', 'id_editor'], 'integer'],
            [['date'], 'safe'],
            [['id_post'], 'exist', 'skipOnError' => true, 'targetClass' => Post::className(), 'targetAttribute' => ['id_post' => 'id_post']],
            [['id_editor'], 'exist', 'skipOnError' => true, 'targetClass' => Admin::className(), 'targetAttribute' => ['id_editor' => 'id_admin']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_news' => 'Id News',
            'id_post' => 'Id Post',
            'status_news' => 'Status News',
            'likes' => 'Likes',
            'views' => 'Views',
            'date' => 'Date',
            'id_editor' => 'Id Editor',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getComments()
    {
        return $this->hasMany(Comment::className(), ['id_news' => 'id_news']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPost()
    {
        return $this->hasOne(Post::className(), ['id_post' => 'id_post']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEditor()
    {
        return $this->hasOne(Admin::className(), ['id_admin' => 'id_editor']);
    }
}
