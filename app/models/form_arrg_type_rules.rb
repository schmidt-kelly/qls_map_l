require 'composite_primary_keys'
class FormArrgTypeRules < PgRecord
  self.table_name = 'form_arrg_type_rules'
  self.primary_keys = :arrg_type_code, :form_type_code

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
end
