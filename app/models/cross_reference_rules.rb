require 'composite_primary_keys'
class CrossReferenceRules < PgRecord
  self.table_name = 'cross_reference_rules'
  self.primary_keys = :xref_type, :subj_code

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
