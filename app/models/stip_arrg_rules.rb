require 'composite_primary_keys'
class StipArrgRules < PgRecord
  self.table_name = 'stip_arrg_rules'
  self.primary_keys = :stip_type_code, :arrg_type_code

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
end
