<?php

namespace frontend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\Komentar;

/**
 * KomentarSearch represents the model behind the search form of `frontend\models\Komentar`.
 */
class KomentarSearch extends Komentar
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_comment', 'content', 'created_at', 'updated_at', 'created_by', 'updated_by', 'id_news'], 'integer'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Komentar::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id_comment' => $this->id_comment,
            'content' => $this->content,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'id_news' => $this->id_news,
        ]);

        return $dataProvider;
    }
}