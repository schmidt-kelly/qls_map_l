require 'composite_primary_keys'
class QstagLdSegLvlGrp <  PgRecord
    self.table_name = 'qstag_ld_seg_lvl_grp'
    self.primary_keys = :arrg_key, :grp_arrg_key, :set_id, :legal_desc_seg
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
