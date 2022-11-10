class WellInfoQra < PgRecord
  self.table_name = 'well_info_qra'
  self.primary_key = 'well_no'

  has_many :all_agreements, class_name: "AllAgreements", :through => :well_agmt_xref_m
  has_many :well_agmt_xref_m, foreign_key: 'well_no', class_name: "WellAgmtXrefM"
end
