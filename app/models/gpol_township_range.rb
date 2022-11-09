require 'composite_primary_keys'
class GpolTownshipRange < PgRecord
  self.table_name = 'gpol_township_range'
  self.primary_keys = :ctry_code, :st_code, :cnty_code, :pm_name, :township  #need to add :range

  has_many :gpol_jeff_sections, :foreign_key => [:ctry_code, :st_code, :cnty_code, :pm_name, :township]
  has_many :gpol_lot_descs, :foreign_key => [:ctry_code, :st_code, :cnty_code, :pm_name, :township]

end
