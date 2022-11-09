require 'composite_primary_keys'
class ParticipantAddresses <  PgRecord
  self.table_name = 'participant_addresses'
  self.primary_keys = :prtp_key, :prtp_addr_key

  has_many :stipulation_obligations, :foreign_key => [:payor_prtp_key, :payor_prtp_addr_key], class_name: "StipulationObligations"
  has_many :addn_lessors, :foreign_key =>  [:prtp_key, :prtp_addr_key], class_name: "AddnLessors"
  has_many :multiple_addresses, :foreign_key =>  [:prtp_key, :prtp_addr_key], class_name: "MultipleAddresses"

  belongs_to :qcode_name_address_status, foreign_key: 'status', class_name: "QcodeNameAddressStatus"
  belongs_to :participants, foreign_key: 'prtp_key', class_name: "Participants"
end
