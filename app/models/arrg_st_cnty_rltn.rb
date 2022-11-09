require 'composite_primary_keys'
class ArrgStCntyRltn < PgRecord
    self.table_name = 'arrg_st_cnty_rltn'
    self.primary_keys = :arrg_key, :gpol_st_key, :gpol_cnty_key, :rltn_src

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :gpol_area_counties, foreign_key: 'gpol_cnty_key', primary_key: 'gpol_dtl_cnty_key', class_name: "GpolAreaCounties"
    belongs_to :gpol_area_states, foreign_key: 'gpol_st_key', primary_key: 'gpol_dtl_st_key', class_name: "GpolAreaStates"
end
