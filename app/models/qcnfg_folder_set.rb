require 'composite_primary_keys'
class QcnfgFolderSet < PgRecord
  self.table_name = 'qcnfg_folder_set'
  self.primary_keys =  :folder_set_id, :folder_id

end
