require 'composite_primary_keys'
class LdSubExhibitDesc <  PgRecord
    self.table_name = 'ld_sub_exhibit_desc'
    self.primary_keys = :arrg_key, :line_no
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
