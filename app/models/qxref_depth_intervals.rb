require 'composite_primary_keys'
class QxrefDepthIntervals <  PgRecord
    self.table_name = 'qxref_depth_intervals'
    self.primary_keys = :arrg_key, :arrg_dscr, :dpth_seq, :note_grp_id
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
