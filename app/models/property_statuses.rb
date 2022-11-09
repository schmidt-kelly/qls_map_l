class PropertyStatuses <  PgRecord
  self.table_name = 'property_statuses'
  self.primary_key = 'prop_stat_code'

  has_many :all_agreements, foreign_key: 'arrg_prop_stat_code', class_name: "AllAgreements"
  belongs_to :prop_status_categories, foreign_key: 'prop_stat_catg', class_name: "PropStatusCategories"
end
