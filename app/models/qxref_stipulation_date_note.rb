require 'composite_primary_keys'
class QxrefStipulationDateNote <  PgRecord
    self.table_name = 'qxref_stipulation_date_note'
    self.primary_keys = :note_grp_id, :stip_key

end
