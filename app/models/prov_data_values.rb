require 'composite_primary_keys'
class ProvDataValues < PgRecord
  self.table_name = 'prov_data_values'
  self.primary_keys = :prov_data_idnt, :subj_code, :prov_data_valu

end
