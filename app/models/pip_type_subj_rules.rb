require 'composite_primary_keys'
class PipTypeSubjRules <  PgRecord
  self.table_name = 'pip_type_subj_rules'
  self.primary_keys = :pip_type_code, :pip_type_catg, :subj_code

  belongs_to :pip_types, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "PipTypes"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
