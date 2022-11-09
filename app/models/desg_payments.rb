require 'composite_primary_keys'
class DesgPayments < PgRecord
    self.table_name = 'desg_payments'
    self.primary_key = 'desg_key'

    belongs_to :stipulation_obligations, foreign_key: 'stip_key', class_name: "StipulationObligations"
    belongs_to :pip_types, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "PipTypes"

end
