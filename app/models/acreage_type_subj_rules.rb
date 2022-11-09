require 'composite_primary_keys'
class AcreageTypeSubjRules < PgRecord
  self.table_name = 'acreage_type_subj_rules'
  self.primary_keys =  :acre_type_code, :subj_code

  belongs_to :acreage_types, foreign_key: 'acre_type_code', class_name: "AcreageTypes"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
