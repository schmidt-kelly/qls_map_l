require 'composite_primary_keys'
class GeneralRemarks < PgRecord
  self.table_name = 'general_remarks'
  self.primary_key = 'rmk_key'

  belongs_to :remark_type_codes, :foreign_key => [:rmk_type, :rmk_type_catg], class_name: "RemarkTypeCodes"

  has_many :general_remark_text, foreign_key: 'rmk_key', class_name: "GeneralRemarkText"
end


