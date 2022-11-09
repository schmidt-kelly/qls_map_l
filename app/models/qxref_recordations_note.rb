require 'composite_primary_keys'
class QxrefRecordationsNote <  PgRecord
  self.table_name = 'qxref_recordations_note'
  self.primary_keys = :rcdn_key, :note_grp_id

  belongs_to :recordations, foreign_key: 'rcdn_key', class_name: "Recordations"
end