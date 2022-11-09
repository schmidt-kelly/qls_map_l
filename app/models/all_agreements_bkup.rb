class AllAgreementsBkup < PgRecord
    self.table_name = 'all_agreements_bkup'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
