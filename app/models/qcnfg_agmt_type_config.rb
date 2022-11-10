require 'composite_primary_keys'
class QcnfgAgmtTypeConfig < PgRecord
  self.table_name = 'qcnfg_agmt_type_config'
  self.primary_keys = :arrg_dscr, :arrg_type_code

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
end
