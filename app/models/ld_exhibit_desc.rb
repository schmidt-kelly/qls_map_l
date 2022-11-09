require 'composite_primary_keys'
class LdExhibitDesc < PgRecord
  self.table_name = 'ld_exhibit_desc'
  self.primary_keys = :agmt_lvl_arrg_key, :line_no
  belongs_to :all_agreements, foreign_key: 'agmt_lvl_arrg_key', class_name: "AllAgreements"
  has_many :ld_exhibit_report, foreign_key: 'agmt_lvl_arrg_key', class_name: "LdExhibitReport"
end
