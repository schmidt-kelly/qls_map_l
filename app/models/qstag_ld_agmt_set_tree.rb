require 'composite_primary_keys'
class QstagLdAgmtSetTree <  PgRecord
    self.table_name = 'qstag_ld_agmt_set_tree'
    self.primary_keys = :set_id, :grp_arrg_key, :arrg_key

    belongs_to :qstag_ld_agmt_set, class_name: "QstagLdAgmtSet"

end
