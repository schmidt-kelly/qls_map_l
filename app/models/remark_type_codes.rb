require 'composite_primary_keys'
class RemarkTypeCodes < PgRecord
  self.table_name = 'remark_type_codes'
  self.primary_keys = :remark_type, :remark_catg

  has_many :arrg_remarks, :foreign_key => [:rmk_type, :rmk_type_catg], class_name: "ArrgRemarks"
  has_many :general_remarks, :foreign_key => [:rmk_type, :rmk_type_catg], class_name: "GeneralRemarks"
  has_many :remark_type_code_rules, :foreign_key => [:remark_type, :remark_catg], class_name: "RemarkTypeCodeRules"

end

