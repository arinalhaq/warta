<?php

namespace app\models;

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
 * @property Komentar[] $komentars
 * @property Post $post
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
    public function getKomentars()
    {
        return $this->hasMany(Komentar::className(), ['id_news' => 'id_news']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPost()
    {
        return $this->hasOne(Post::className(), ['id_post' => 'id_post']);
    }
}
