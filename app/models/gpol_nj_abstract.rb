require 'composite_primary_keys'
class GpolNjAbstract < PgRecord
  self.table_name = 'gpol_nj_abstract'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :survey_name, :abstract_number

  belongs_to :gpol_nj_survey, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjSurvey"

end
