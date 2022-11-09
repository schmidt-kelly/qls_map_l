require 'composite_primary_keys'
class QcodeStipRespUnits < PgRecord
  self.table_name = 'qcode_stip_resp_units'
  self.primary_keys = :subj_code, :resp_unit_cd

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
