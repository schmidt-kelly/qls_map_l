class WellAgmtXrefM <  PgRecord
    self.table_name = 'well_agmt_xref_m'
    self.primary_key = 'xref_key'

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :well_info_qra, foreign_key: 'well_key', class_name: "WellInfoQra"
end
