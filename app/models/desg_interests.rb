require 'composite_primary_keys'
class DesgInterests < PgRecord
    self.table_name = 'desg_interests'
    self.primary_key = 'desg_key'

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :arrg_dscr_types, foreign_key: 'arrg_dscr', class_name: "ArrgDscrTypes"
    belongs_to :pip_types, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "PipTypes"

    has_many :multiple_addresses, foreign_key: 'desg_key', class_name: "MultipleAddresses"
end
