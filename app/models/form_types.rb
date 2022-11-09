require 'composite_primary_keys'
class FormTypes < PgRecord
  self.table_name = 'form_types'
  self.primary_keys = :form_type_code, :subj_code

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
