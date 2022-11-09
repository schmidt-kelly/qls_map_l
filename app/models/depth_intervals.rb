require 'composite_primary_keys'
class DepthIntervals < PgRecord
    self.table_name = 'depth_intervals'
    self.primary_keys = :arrg_key, :arrg_dscr, :dpth_seq

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :formations, foreign_key: 'frm_from', class_name: "Formations"
    # belongs_to :formations, foreign_key: 'frm_to', class_name: "Formations" ?
    belongs_to :qcode_formation_location, foreign_key: 'frm_from_code', class_name: "QcodeFormationLocation"
    # belongs_to :qcode_formation_location, foreign_key: 'frm_to_code', class_name: "QcodeFormationLocation"  ?
end
