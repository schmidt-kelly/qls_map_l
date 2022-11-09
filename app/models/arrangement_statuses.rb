class ArrangementStatuses < PgRecord
  self.table_name = 'arrangement_statuses'
  self.primary_key = 'arrg_stat_code'

  has_many :all_agreements, foreign_key: 'arrg_stat_code', class_name: "AllAgreements"
end
