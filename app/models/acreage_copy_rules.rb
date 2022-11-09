require 'composite_primary_keys'
class AcreageCopyRules < PgRecord
  self.table_name = 'acreage_copy_rules'
  self.primary_keys = :from_acre_type_code, :from_arrg_dscr, :to_acre_type_code, :to_arrg_dscr
end
