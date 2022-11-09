require 'composite_primary_keys'
class GpolNjBlock < PgRecord
  self.table_name = 'gpol_nj_block'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :survey_name, :block_name

  belongs_to :gpol_nj_survey, :foreign_key => [:ctry_code, :st_code, :cnty_code, :survey_name], class_name: "GpolNjSurvey"

end

