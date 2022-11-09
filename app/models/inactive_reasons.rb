class InactiveReasons < PgRecord
  self.table_name = 'inactive_reasons'
  self.primary_key = 'inac_rsn_code'

  has_many :all_agreements, foreign_key: 'arrg_inac_rsn_code', class_name: "AllAgreements"
end