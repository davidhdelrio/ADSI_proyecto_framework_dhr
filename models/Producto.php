<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "producto".
 *
 * @property int $id
 * @property string $productos
 * @property string $descripcion
 * @property string $id_proveedor
 * @property string $precio
 */
class Producto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'producto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['productos', 'descripcion', 'id_proveedor', 'precio'], 'required'],
            [['productos'], 'string', 'max' => 50],
            [['descripcion'], 'string', 'max' => 500],
            [['id_proveedor'], 'string', 'max' => 30],
            [['precio'], 'string', 'max' => 10],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'productos' => Yii::t('app', 'Productos'),
            'descripcion' => Yii::t('app', 'Descripcion'),
            'id_proveedor' => Yii::t('app', 'Id Proveedor'),
            'precio' => Yii::t('app', 'Precio'),
        ];
    }
}
