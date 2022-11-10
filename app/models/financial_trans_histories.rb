class FinancialTransHistories < PgRecord
    self.table_name = 'financial_trans_histories'
    self.primary_key = 'ft_key'

    has_many :financial_trans_cc_sap_hist, foreign_key: 'ft_key', class_name: "FinancialTransCcSapHist"
end
