require 'composite_primary_keys'
class LdExceptionDesc < PgRecord
  self.table_name = 'ld_exception_desc'
  self.primary_keys = :legal_desc_key, :legal_desc_seg, :polygon_seq

  belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"
  has_many :ld_exception_report, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdExceptionReport"
end

