require 'composite_primary_keys'
class LdSegLvlExhibitDesc <  PgRecord
  self.table_name = 'ld_seg_lvl_exhibit_desc'
  self.primary_keys = :legal_desc_key, :legal_desc_seg, :line_no
  belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"

end
