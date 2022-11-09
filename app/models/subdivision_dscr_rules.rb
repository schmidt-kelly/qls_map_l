require 'composite_primary_keys'
class SubdivisionDscrRules < PgRecord
  self.table_name = 'subdivision_dscr_rules'
  self.primary_keys = :arrg_type, :parent_dscr, :child_dscr

  belongs_to :arrangement_types, foreign_key: 'arrg_type', class_name: "ArrangementTypes"
  belongs_to :arrg_dscr_types, foreign_key: 'child_dscr', class_name: "ArrgDscrTypes"
  # belongs_to :arrg_dscr_types, foreign_key: 'parent_dscr', class_name: "ArrgDscrTypes"
end
