require 'composite_primary_keys'
class ApprovalRules < PgRecord
  self.table_name = 'approval_rules'
  self.primary_keys = :arrg_type_code, :arrg_dscr, :func_type, :appv_rule
end
