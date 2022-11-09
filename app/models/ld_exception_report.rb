require 'composite_primary_keys'
class LdExceptionReport < PgRecord
  self.table_name = 'ld_exception_report'
  self.primary_keys = :legal_desc_key, :legal_desc_seg, :polygon_seq, :desc_lineno

  belongs_to :ld_exception_desc, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdExceptionDesc"
end
