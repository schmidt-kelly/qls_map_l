require 'composite_primary_keys'
class ArrangementStages < PgRecord
  self.table_name = 'arrangement_stages'
  self.primary_keys = :arrg_stge, :subj_code

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"

  has_many :all_agreements, :foreign_key =>  [:arrg_stge, :subj_code], class_name: "AllAgreements"
end
