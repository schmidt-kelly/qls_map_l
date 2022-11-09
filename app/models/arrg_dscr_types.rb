class ArrgDscrTypes < PgRecord
  self.table_name = 'arrg_dscr_types'
  self.primary_key =  'arrg_dscr'

  has_many :acreages, foreign_key: 'arrg_dscr', class_name: "Acreages"
  has_many :acreage_prompting_rules, foreign_key: 'acre_type_code', class_name: "AcreagePromptingRules"
  has_many :desg_interests, foreign_key: 'arrg_dscr', class_name: "DesgInterests"
  has_many :subdivision_dscr_rules, foreign_key: 'child_dscr', class_name: "SubdivisionDscrRules"
  # has_many :subdivision_dscr_rules, foreign_key: 'parent_dscr', class_name: "SubdivisionDscrRules"
end
