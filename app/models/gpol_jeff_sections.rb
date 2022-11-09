require 'composite_primary_keys'
class GpolJeffSections < PgRecord
  self.table_name = 'gpol_jeff_sections'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :pm_name, :township, :section  #need to add :range

  belongs_to :gpol_township_range, :foreign_key => [:ctry_code, :st_code, :cnty_code, :pm_name, :township]

end
