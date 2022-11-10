class Participants <  PgRecord
  self.table_name = 'participants'
  self.primary_key = 'prtp_key'

  has_many :participant_addresses, foreign_key: 'prtp_key', class_name: "ParticipantAddresses"

  belongs_to :tax_types, foreign_key: 'tax_type_code', class_name: "TaxTypes"
end
