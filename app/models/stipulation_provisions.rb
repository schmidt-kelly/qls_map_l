class StipulationProvisions <  PgRecord
    self.table_name = 'stipulation_provisions'
    self.primary_key = 'stip_key'

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :stipulation_date, foreign_key: 'stip_date_key', class_name: "StipulationDate"
    belongs_to :stip_groups, foreign_key: 'stip_grp_cd', class_name: "StipGroups"
    belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"

    has_many :qxref_stip_provisions, foreign_key: 'stip_key', class_name: "QxrefStipProvisions"
end
