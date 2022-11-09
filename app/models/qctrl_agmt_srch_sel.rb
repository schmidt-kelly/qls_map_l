require 'composite_primary_keys'
class QctrlAgmtSrchSel <  PgRecord
    self.table_name = 'qctrl_agmt_srch_sel'
    self.primary_keys = :arrg_key, :search_id, :updt_oper
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
