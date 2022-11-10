require 'composite_primary_keys'
class QstagLdSegLvlGrpClass <  PgRecord
    self.table_name = 'qstag_ld_seg_lvl_grp_class'
    self.primary_keys = :set_id, :grp_arrg_key, :arrg_key

    has_many :qstag_ld_seg_lvl_grp, :foreign_key => [:set_id, :grp_arrg_key, :arrg_key], class_name: "QstagLdSegLvlGrp"
end
