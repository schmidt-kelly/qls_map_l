require 'composite_primary_keys'
class LdExhibitReport < PgRecord
  self.table_name = 'ld_exhibit_report'
  self.primary_keys = :agmt_lvl_arrg_key, :desc_lineno

  belongs_to :ld_exhibit_desc, foreign_key: 'agmt_lvl_arrg_key', class_name: "LdExhibitDesc"

end
