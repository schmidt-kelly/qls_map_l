require 'composite_primary_keys'
class StipProvDataValues < PgRecord
  self.table_name = 'stip_prov_data_values'
  self.primary_keys = :prov_data_catg, :prov_data_value

end
