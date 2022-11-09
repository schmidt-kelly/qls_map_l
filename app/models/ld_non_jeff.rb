require 'composite_primary_keys'
class LdNonJeff < PgRecord
  self.table_name = 'ld_non_jeff'
  self.primary_keys = :legal_desc_key, :legal_desc_seg
  belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"
  has_many :ld_non_jeff_calls, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdNonJeffCalls"
end

