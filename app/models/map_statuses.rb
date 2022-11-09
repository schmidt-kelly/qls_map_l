class MapStatuses < PgRecord
  self.table_name = 'map_statuses'
  self.primary_key = 'map_status'

  has_many :all_agreements, foreign_key: 'map_status', class_name: "AllAgreements"
end
