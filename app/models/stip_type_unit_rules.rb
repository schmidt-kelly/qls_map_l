require 'composite_primary_keys'
class StipTypeUnitRules < PgRecord
  self.table_name = 'stip_type_unit_rules'
  self.primary_keys = :stip_type_code, :stip_unit_code
end

