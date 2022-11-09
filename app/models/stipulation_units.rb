require 'composite_primary_keys'
class StipulationUnits < PgRecord
  self.table_name = 'stipulation_units'
  self.primary_keys = :stip_unit_code, :subj_code

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end
