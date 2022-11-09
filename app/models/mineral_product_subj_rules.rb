require 'composite_primary_keys'
class MineralProductSubjRules < PgRecord
  self.table_name = 'mineral_product_subj_rules'
  self.primary_keys = :mnrl_prod_type_code, :subj_code

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
  belongs_to :mineral_product_types, foreign_key: 'mnrl_prod_type_code', class_name: "MineralProductTypes"
end
