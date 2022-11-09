require 'composite_primary_keys'
class GeneralRemarkText < PgRecord
  self.table_name = 'general_remark_text'
  self.primary_keys = :rmk_key, :rmk_lineno

  belongs_to :general_remarks, foreign_key: 'rmk_key', class_name: "GeneralRemarks"
end
