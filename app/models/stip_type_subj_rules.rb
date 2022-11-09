require 'composite_primary_keys'
class StipTypeSubjRules <  PgRecord
  self.table_name = 'stip_type_subj_rules'
  self.primary_keys = :stip_type_catg, :stip_type_code, :subj_code

  belongs_to :stipulation_types, :foreign_key => [:stip_type_catg, :stip_type_code], class_name: "StipulationTypes"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
