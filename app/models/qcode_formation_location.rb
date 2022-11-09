class QcodeFormationLocation < PgRecord
  self.table_name = 'qcode_formation_location'
  self.primary_key = 'loc_cd'

  has_many :depth_intervals, foreign_key: 'frm_from_code', class_name: "DepthIntervals"

end
