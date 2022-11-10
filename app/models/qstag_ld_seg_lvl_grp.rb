require 'composite_primary_keys'
class QstagLdSegLvlGrp <  PgRecord
    self.table_name = 'qstag_ld_seg_lvl_grp'
    self.primary_keys = :set_id, :grp_arrg_key, :arrg_key, :legal_desc_seg

    belongs_to :qstag_ld_seg_lvl_grp_class, :foreign_key =>  [:set_id, :grp_arrg_key, :arrg_key], class_name: "QstagLdSegLvlGrpClass"
end
