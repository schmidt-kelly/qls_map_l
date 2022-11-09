class DepthFormationRltn < PgRecord
    self.table_name = 'depth_formation_rltn'
    self.primary_key = :dpth_frm_rltn_seq
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :formations, foreign_key: 'form_code', class_name: "Formations"
end
