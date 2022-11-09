require 'composite_primary_keys'
class AcreagePromptingRules < PgRecord
  self.table_name = 'acreage_prompting_rules'
  self.primary_keys = :arrg_dscr, :sort_seq

  belongs_to :acreage_types, foreign_key: 'acre_type_code', class_name: "AcreageTypes"
  belongs_to :arrg_dscr_types, foreign_key: 'arrg_dscr', class_name: "ArrgDscrTypes"
end
