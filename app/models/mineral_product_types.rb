class MineralProductTypes < PgRecord
  self.table_name = 'mineral_product_types'
  self.primary_key = 'mnrl_prod_type_code'

  has_many :all_agreements, foreign_key: 'mnrl_prod_type_code', class_name: "AllAgreements"
  has_many :mineral_product_subj_rules, foreign_key: 'mnrl_prod_type_code', class_name: "MineralProductSubjRules"
end
