class EnhCalcInterest < PgRecord
    self.table_name = 'enh_calc_interest'
    self.primary_key = 'arrg_key'   # ARE only

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    has_many :enh_calc_interest_all, foreign_key: 'legal_arrg_key', class_name: "EnhCalcInterestAll"
end
