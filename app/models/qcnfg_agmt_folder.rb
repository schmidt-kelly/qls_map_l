require 'composite_primary_keys'
class QcnfgAgmtFolder < PgRecord
  self.table_name = 'qcnfg_agmt_folder'
  self.primary_keys = :arrg_dscr, :arrg_type_code, :folder_id

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
end
