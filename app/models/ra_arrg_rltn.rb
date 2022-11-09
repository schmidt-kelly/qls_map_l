class RaArrgRltn <  PgRecord
    self.table_name = 'ra_arrg_rltn'
    self.primary_keys = 'ra_rltn_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
