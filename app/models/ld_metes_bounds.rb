require 'composite_primary_keys'
class LdMetesBounds < PgRecord
    self.table_name = 'ld_metes_bounds'
    self.primary_keys = :legal_desc_key, :legal_desc_seg, :line_no
    belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"
end
