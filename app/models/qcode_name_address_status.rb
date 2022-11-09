class QcodeNameAddressStatus <  PgRecord
  self.table_name = 'qcode_name_address_status'
  self.primary_keys = 'status'

  has_many :participant_addresses, foreign_key: 'status', class_name: "ParticipantAddresses"

end
