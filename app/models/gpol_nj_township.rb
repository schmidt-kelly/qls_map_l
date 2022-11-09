require 'composite_primary_keys'
class GpolNjTownship < PgRecord
  self.table_name = 'gpol_nj_township'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :survey_name, :nj_township

  belongs_to :gpol_nj_survey, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjSurvey"

end
