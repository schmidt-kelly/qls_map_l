require 'composite_primary_keys'
class LdLotDesc < PgRecord
    self.table_name = 'ld_lot_desc'
    self.primary_keys = :legal_desc_key, :legal_desc_seg, :lot_number
    belongs_to :legal_description_segments, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LegalDescriptionSegments"
end
