require 'composite_primary_keys'
class QxrefStipulationObligations <  PgRecord
  self.table_name = 'qxref_stipulation_obligations'
  self.primary_keys = :stip_key, :note_grp_id

  belongs_to :stipulation_obligations, foreign_key: 'stip_key', class_name: "StipulationObligations"
end
