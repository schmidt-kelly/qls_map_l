require 'composite_primary_keys'
class LegalDescriptionSegments <  PgRecord
	self.table_name = 'legal_description_segments'
	self.primary_keys = :arrg_key, :legal_desc_seg

	belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
	has_many :ld_jeff_header, :foreign_key => [:arrg_key, :legal_desc_seg], class_name: "LdJeffHeader"
	has_many :ld_non_jeff, :foreign_key => [:arrg_key, :legal_desc_seg], class_name: "LdNonJeff"
	has_many :ld_seg_lvl_exhibit_descs, :foreign_key => [:arrg_key, :legal_desc_seg], class_name: "LdSegLvlExhibitDesc"
	has_many :ld_metes_bounds, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdMetesBounds"
	has_many :ld_other_legal, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdOtherLegal"
	has_many :ld_lot_desc, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdLotDesc"
	has_many :ld_exception_desc, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdExceptionDesc"

end
