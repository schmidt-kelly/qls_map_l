require 'composite_primary_keys'
class PropertyStatusArrgRules < PgRecord
  self.table_name = 'property_status_arrg_rules'
  self.primary_keys = :prop_stat_code, :prop_stat_catg, :arrg_type

  belongs_to :property_statuses, :foreign_key => [:prop_stat_code, :prop_stat_catg], class_name: "PropertyStatuses"
  belongs_to :arrangement_types, foreign_key: 'arrg_type', class_name: "ArrangementTypes"
end
