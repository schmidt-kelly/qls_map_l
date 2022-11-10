class ArrangementTypes < PgRecord
  self.table_name = 'arrangement_types'
  self.primary_key = 'arrg_type_code'

  has_many :all_agreements, foreign_key: 'arrg_type_code', class_name: "AllAgreements"
  has_many :pip_arrg_type_rules, foreign_key: 'arrg_type', class_name: "PipArrgTypeRules"
  has_many :approval_msg_rules, foreign_key: 'arrg_type_code', class_name: "ApprovalMsgRules"
  has_many :property_status_arrg_rules, foreign_key: 'arrg_type', class_name: "PropertyStatusArrgRules"
  has_many :stip_arrg_rules, foreign_key: 'arrg_type_code', class_name: "StipArrgRules"
  has_many :subdivision_dscr_rules, foreign_key: 'arrg_type', class_name: "SubdivisionDscrRules"
  has_many :mineral_prod_arrg_type_rules, foreign_key: 'arrg_type_code', class_name: "MineralProdArrgTypeRules"
  has_many :qcnfg_agmt_folders, foreign_key: 'arrg_type_code', class_name: "QcnfgAgmtFolder"
  has_many :form_arrg_type_rules, foreign_key: 'arrg_type_code', class_name: "FormArrgTypeRules"
  has_many :qcnfg_agmt_type_config, foreign_key: 'arrg_type_code', class_name: "QcnfgAgmtTypeConfig"

  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
end