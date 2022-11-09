class EnhCalcDepthInterest < PgRecord
    self.table_name = 'enh_calc_depth_interest'
    self.primary_key = 'arrg_key' # select DEP only

    belongs_to :enh_calc_interest_all, foreign_key: 'arrg_key', class_name: "EnhCalcInterestAll"
end
