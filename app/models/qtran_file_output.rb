require 'composite_primary_keys'
class QtranFileOutput < PgRecord
  self.table_name = 'qtran_file_output'
  self.primary_keys = :file_id, :file_lineno
end
