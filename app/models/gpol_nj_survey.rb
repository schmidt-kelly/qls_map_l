require 'composite_primary_keys'
class GpolNjSurvey < PgRecord
  self.table_name = 'gpol_nj_survey'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :survey_name

  has_many :gpol_nj_abstract, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjAbstract"
  has_many :gpol_nj_block, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjBlock"
  has_many :gpol_nj_section, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjSection"
  has_many :gpol_nj_township, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjTownship"
  has_many :gpol_nj_labor, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjLabor"

  belongs_to :gpol_area_counties, :foreign_key => [:ctry_code, :st_code, :cnty_code], class_name: "GpolAreaCounties"
end
