class QstagLdSegLvlGrpClass <  PgRecord
    self.table_name = 'qstag_ld_seg_lvl_grp_class'
    self.primary_keys = :arrg_key, :grp_arrg_key, :set_id
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
