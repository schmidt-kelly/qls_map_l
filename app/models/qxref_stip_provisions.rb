require 'composite_primary_keys'
class QxrefStipProvisions <  PgRecord
  self.table_name = 'qxref_stip_provisions'
  self.primary_keys = :stip_key, :note_grp_id
  belongs_to :stipulation_provisions, foreign_key: 'stip_key', class_name: "StipulationProvisions"
end
