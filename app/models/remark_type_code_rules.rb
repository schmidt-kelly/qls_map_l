require 'composite_primary_keys'
class RemarkTypeCodeRules < PgRecord
  self.table_name = 'remark_type_code_rules'
  self.primary_keys = :remark_type, :remark_catg, :subj_code

  belongs_to :remark_type_codes, :foreign_key => [:remark_type, :remark_catg]

end
