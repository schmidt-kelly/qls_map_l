require 'composite_primary_keys'
class GpolAreaCounties < PgRecord
  self.table_name = 'gpol_area_counties'
  self.primary_keys = :ctry_code, :st_code, :cnty_code

  belongs_to :gpol_area_states, :foreign_key => [:ctry_code, :st_code], class_name: "GpolAreaStates"

  has_many :gpol_prn_mdn, :foreign_key => [:ctry_code, :st_code, :cnty_code], class_name: "GpolPrnMdn"
  has_many :arrg_st_cnty_rltn, foreign_key: 'gpol_cnty_key', primary_key: 'gpol_dtl_cnty_key', class_name: "ArrgStCntyRltn"
  has_many :gpol_nj_surveys, :foreign_key => [:ctry_code, :st_code, :cnty_code], class_name: "GpolNjSurvey"
  has_many :gpol_tp_district_townships, :foreign_key =>  [:ctry_code, :st_code, :cnty_code], class_name: "GpolTpDistrictTownship"
end
