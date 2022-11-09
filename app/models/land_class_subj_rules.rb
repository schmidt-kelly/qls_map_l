require 'composite_primary_keys'
class LandClassSubjRules < PgRecord
  self.table_name = 'land_class_subj_rules'
  self.primary_key = :land_cls_code, :subj_code

  belongs_to :land_classifications, foreign_key: 'land_cls_code', class_name: "LandClassifications"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"

end

