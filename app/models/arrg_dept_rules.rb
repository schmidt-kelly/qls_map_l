require 'composite_primary_keys'
class ArrgDeptRules < PgRecord
  self.table_name = 'arrg_dept_rules'
  self.primary_keys = :arrg_type_code, :prop_status_catg, :department_code
end
