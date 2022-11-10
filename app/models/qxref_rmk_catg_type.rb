require 'composite_primary_keys'
class QxrefRmkCatgType < PgRecord
  self.table_name = 'qxref_rmk_catg_type'
  self.primary_keys = :remark_catg, :remark_type
end
