require 'composite_primary_keys'
class GpolTpDistrictTownship < PgRecord
  self.table_name = 'gpol_tp_district_township'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :district_township_code

  belongs_to :gpol_area_counties, :foreign_key => [:ctry_code, :st_code, :cnty_code], class_name: "GpolAreaCounties"

end
