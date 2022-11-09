class AadEagAllAgreementRmkCnt < PgRecord
    self.table_name = 'aad_eag_all_agreement_rmk_cnt'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
