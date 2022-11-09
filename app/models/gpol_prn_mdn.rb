require 'composite_primary_keys'
class GpolPrnMdn < PgRecord
  self.table_name = 'gpol_prn_mdn'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :pm_name

  belongs_to :gpol_area_counties, :foreign_key => [:ctry_code, :st_code, :cnty_code], class_name: "GpolAreaCounties"

end
