class StipulationDate <  PgRecord
  self.table_name = 'stipulation_date'
  self.primary_key = 'stip_key'

  belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"

  has_many :stipulation_provisions, foreign_key: 'stip_date_key', class_name: "StipulationProvisions"
  # has_many :desg_transfer_histories, foreign_key: 'stip_key', class_name: "DesgTransferHistories"
  has_many :events, foreign_key: 'stip_key', class_name: "Events"
  has_many :financial_trans_histories, foreign_key: 'stip_key', class_name: "FinancialTransHistories"
  # has_many :qctrl_pmt_cc_alloc, foreign_key: 'stip_key', class_name: "QctrlPmtCcAlloc"
  # has_many :qctrl_pmt_sub_asgn, foreign_key: 'stip_key', class_name: "QctrlPmtSubAsgn"
  # has_many :qhist_events, foreign_key: 'stip_key', class_name: "QhistEvents"


end
