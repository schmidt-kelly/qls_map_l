require 'composite_primary_keys'
class MineralProdArrgTypeRules < PgRecord
  self.table_name = 'mineral_prod_arrg_type_rules'
  self.primary_keys = :mnrl_prod_type_code, :arrg_type_code

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"

  has_many :mineral_product_types, foreign_key: 'mnrl_prod_type_code', class_name: "MineralProductTypes"
end
