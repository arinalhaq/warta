<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "admin".
 *
 * @property int $id_admin
 * @property string $username
 * @property string $password
 * @property string $fullname
 * @property string $email
 *
 * @property News[] $news
 */
class Admin extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'admin';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['username', 'password', 'fullname', 'email'], 'required'],
            [['username', 'password', 'fullname', 'email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id_admin' => 'Id Admin',
            'username' => 'Username',
            'password' => 'Password',
            'fullname' => 'Fullname',
            'email' => 'Email',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNews()
    {
        return $this->hasMany(News::className(), ['id_editor' => 'id_admin']);
    }
}
