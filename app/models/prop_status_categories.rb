class PropStatusCategories < PgRecord
  self.table_name = 'prop_status_categories'
  self.primary_key = 'prop_stat_catg'

  has_many :property_statuses, foreign_key: 'prop_stat_catg', class_name: "PropertyStatuses"
end
