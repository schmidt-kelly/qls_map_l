require 'composite_primary_keys'
class Acreages < PgRecord
    self.table_name = 'acreages'
    self.primary_keys = :arrg_key, :arrg_dscr, :acre_type_code

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :acreage_types, foreign_key: 'acre_type_code', class_name: "AcreageTypes"
    belongs_to :arrg_dscr_types, foreign_key: 'arrg_dscr', class_name: "ArrgDscrTypes"
end
