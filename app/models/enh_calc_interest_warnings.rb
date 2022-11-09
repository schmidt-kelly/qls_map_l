require 'composite_primary_keys'
class EnhCalcInterestWarnings < PgRecord
    self.table_name = 'enh_calc_interest_warnings'
    self.primary_keys = :arrg_key, :warning_num
end
