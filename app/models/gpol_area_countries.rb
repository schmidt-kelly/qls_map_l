class GpolAreaCountries < PgRecord
  self.table_name = 'gpol_area_countries'
  self.primary_key = 'ctry_code'

  has_many :gpol_area_states, foreign_key: 'ctry_code', class_name: "GpolAreaStates"

end
