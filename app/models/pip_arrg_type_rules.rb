require 'composite_primary_keys'
class PipArrgTypeRules <  PgRecord
  self.table_name = 'pip_arrg_type_rules'
  self.primary_keys = :pip_type, :pip_type_catg, :arrg_type

  belongs_to :pip_types, :foreign_key => [:pip_type, :pip_type_catg], class_name: "PipTypes"
  belongs_to :arrangement_types, foreign_key: 'arrg_type', class_name: "ArrangementTypes"
end

