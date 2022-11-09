require 'composite_primary_keys'
class StipProvModels < PgRecord
  self.table_name = 'stip_prov_models'
  self.primary_keys = :form_type_code, :display_seq
end
