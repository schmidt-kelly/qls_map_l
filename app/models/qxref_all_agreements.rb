require 'composite_primary_keys'
class QxrefAllAgreements <  PgRecord
    self.table_name = 'qxref_all_agreements'
    self.primary_keys = :arrg_key, :note_grp_id

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
