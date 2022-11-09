class WellAgmtXrefM <  PgRecord
    self.table_name = 'well_agmt_xref_m'
    self.primary_key = 'xref_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
