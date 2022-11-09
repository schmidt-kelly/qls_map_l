class Formations < PgRecord
  self.table_name = 'formations'
  self.primary_key = 'form_code'
  has_many :depth_intervals, foreign_key: 'frm_from', class_name: "DepthIntervals"
  # has_many :depth_intervals, foreign_key: 'frm_to', class_name: "DepthIntervals" ?
  has_many :depth_formation_rltn, foreign_key: 'form_code', class_name: "DepthFormationRltn"
  has_many :formations_filters, foreign_key: 'form_code', class_name: "FormationsFilter"
end

