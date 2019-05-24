<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Advertise;

/**
 * AdvertiseSearch represents the model behind the search form of `backend\models\Advertise`.
 */
class AdvertiseSearch extends Advertise
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id_ads'], 'integer'],
            [['title', 'content', 'advertiser', 'startdate', 'enddate'], 'safe'],
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
        $query = Advertise::find();

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
            'id_ads' => $this->id_ads,
            'startdate' => $this->startdate,
            'enddate' => $this->enddate,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'advertiser', $this->advertiser]);

        return $dataProvider;
    }
}
