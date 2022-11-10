require 'composite_primary_keys'
class QstagLdAgmtSet < PgRecord
  self.table_name = 'qstag_ld_agmt_set'
  self.primary_keys = :set_id, :grp_arrg_key

  has_many :qstag_ld_agmt_set_tree, :foreign_key => [:set_id, :grp_arrg_key], class_name: "QstagLdAgmtSetTree"
end
