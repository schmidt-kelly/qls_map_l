require 'composite_primary_keys'
class GpolAreaStates < PgRecord
  self.table_name = 'gpol_area_states'
  self.primary_keys = :ctry_code, :st_code

  belongs_to :gpol_area_countries, foreign_key: 'ctry_code', class_name: "GpolAreaCountries"

  has_many :gpol_area_counties, :foreign_key =>  [:ctry_code, :st_code], class_name: "GpolAreaCounties"
  has_many :arrg_st_cnty_rltns, foreign_key: 'gpol_st_key', primary_key: 'gpol_dtl_st_key', class_name: "ArrgStCntyRltn"

end
