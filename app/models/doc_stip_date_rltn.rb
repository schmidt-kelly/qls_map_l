require 'composite_primary_keys'
class DocStipDateRltn < PgRecord
  self.table_name = 'doc_stip_date_rltn'
  # self.primary_keys :stip_key, :doc_key
end
