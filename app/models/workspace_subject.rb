class WorkspaceSubject < PgRecord
  self.table_name = 'workspace_subject'
  self.primary_key = 'subj_code'

  has_many :land_class_subj_rules, foreign_key: 'subj_code', class_name: "LandClassSubjRules"
  has_many :all_agreements, foreign_key: 'subj_code', class_name: "AllAgreements"
  has_many :stipulation_date, foreign_key: 'subj_code', class_name: "StipulationDate"
  has_many :acreage_type_subj_rules, foreign_key: 'subj_code', class_name: "AcreageTypeSubjRules"
  has_many :cross_reference_rules, foreign_key: 'subj_code', class_name: "CrossReferenceRules"
  has_many :form_types, foreign_key: 'subj_code', class_name: "FormTypes"
  has_many :arrangement_types, foreign_key: 'subj_code', class_name: "ArrangementTypes"
  has_many :mineral_product_subj_rules, foreign_key: 'subj_code', class_name: "MineralProductSubjRules"
  has_many :pip_type_subj_rules, foreign_key: 'subj_code', class_name: "PipTypeSubjRules"
  has_many :qcode_stip_resp_units, foreign_key: 'subj_code', class_name: "QcodeStipRespUnits"
  has_many :stipulation_units, foreign_key: 'subj_code', class_name: "StipulationUnits"
  has_many :stip_type_subj_rules, foreign_key: 'subj_code', class_name: "StipTypeSubjRules"
  has_many :stipulation_provisions, foreign_key: 'subj_code', class_name: "StipulationProvisions"
  has_many :arrangement_stages, foreign_key: 'subj_code', class_name: "ArrangementStages"

end
