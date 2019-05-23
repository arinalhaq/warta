<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "komentar".
 *
 * @property int $id_comment
 * @property int $content
 * @property int $created_at
 * @property int $updated_at
 * @property int $created_by
 * @property int $updated_by
 * @property int $id_news
 *
 * @property News $news
 */
class Komentar extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'komentar';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['content', 'created_at', 'updated_at', 'created_by', 'updated_by', 'id_news'], 'required'],
            [['content', 'created_at', 'updated_at', 'created_by', 'updated_by', 'id_news'], 'integer'],
            [['id_news'], 'exist', 'skipOnError' => true, 'targetClass' => News::className(), 'targetAttribute' => ['id_news' => 'id_news']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_comment' => 'Id Comment',
            'content' => 'Content',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'id_news' => 'Id News',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNews()
    {
        return $this->hasOne(News::className(), ['id_news' => 'id_news']);
    }
}
