class Recordations <  PgRecord
    self.table_name = 'recordations'
    self.primary_key = 'rcdn_key'

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    has_many :qxref_recordations_notes, foreign_key: 'rcdn_key', class_name: "QxrefRecordationsNote"
end
