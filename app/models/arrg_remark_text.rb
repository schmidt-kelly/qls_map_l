require 'composite_primary_keys'
class ArrgRemarkText < PgRecord
    self.table_name = 'arrg_remark_text'
    self.primary_keys = :rmk_key, :rmk_lineno
    belongs_to :arrg_remarks, foreign_key: 'rmk_key', class_name: "ArrgRemarks"
end
