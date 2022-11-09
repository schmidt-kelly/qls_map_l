require 'composite_primary_keys'
class StipulationObligations <  PgRecord
    self.table_name = 'stipulation_obligations'
    self.primary_key = 'stip_key'

    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :stipulation_types, :foreign_key => [:stip_catg_code, :stip_type_code], class_name: "StipulationTypes"
    belongs_to :participant_addresses, :foreign_key => [:payor_prtp_key, :payor_prtp_addr_key], class_name: "ParticipantAddresses"

    has_many :qxref_stipulation_obligations, foreign_key: 'stip_key', class_name: "QxrefStipulationObligations"
    has_many :desg_payments, foreign_key: 'stip_key', class_name: "DesgPayments"
end
