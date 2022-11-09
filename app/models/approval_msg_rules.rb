require 'composite_primary_keys'
class ApprovalMsgRules < PgRecord
  self.table_name = 'approval_msg_rules'
  self.primary_keys = :msg_num, :arrg_type_code

  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
end