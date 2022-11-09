require 'composite_primary_keys'
class AgmtApprovalResult < PgRecord
  self.table_name = 'agmt_approval_result'
  self.primary_keys = :trans_key, :message_seq
end
