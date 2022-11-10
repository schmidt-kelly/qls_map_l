require 'composite_primary_keys'
class FinancialTransCcSapHist < PgRecord
  self.table_name = 'financial_trans_cc_sap_hist'
  self.primary_keys = :ft_key, :stip_key, :cost_object, :gl_account

  belongs_to :financial_trans_histories, foreign_key: 'ft_key', class_name: "FinancialTransHistories"
end
