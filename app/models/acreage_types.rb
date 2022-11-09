
class AcreageTypes < PgRecord
  self.table_name = 'acreage_types'
  self.primary_key =  'acre_type_code'
  has_many :acreages, foreign_key: 'acre_type_code', class_name: "Acreages"
  has_many :acreage_type_subj_rules, foreign_key: 'acre_type_code', class_name: "AcreageTypeSubjRules"
  has_many :acreage_prompting_rules, foreign_key: 'acre_type_code', class_name: "AcreagePromptingRules"
end
