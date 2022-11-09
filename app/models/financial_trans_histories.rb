class FinancialTransHistories < PgRecord
    self.table_name = 'financial_trans_histories'
    self.primary_key = 'ft_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :stipulation_date, foreign_key: 'stip_key', class_name: "StipulationDate"


end
