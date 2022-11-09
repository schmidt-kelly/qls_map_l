class EnhCalcInterestAll < PgRecord
    self.table_name = 'enh_calc_interest_all'
    self.primary_key = 'arrg_key'  # DEP only

    belongs_to :enh_calc_interest, foreign_key: 'legal_arrg_key', class_name: "EnhCalcInterest"
    has_many :enh_calc_depth_interests, foreign_key: 'arrg_key', class_name: "EnhCalcDepthInterest"
end
