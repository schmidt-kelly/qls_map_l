require 'composite_primary_keys'
class LdJeffHeader < PgRecord
    self.table_name = 'ld_jeff_header'
    self.primary_keys = :legal_desc_key, :legal_desc_seg
    belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"
    has_many :ld_jeff_calls, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdJeffCalls"
end
