class Participants <  PgRecord
  self.table_name = 'participants'
  self.primary_key = 'prtp_key'

  has_many :participant_addresses, foreign_key: 'prtp_key', class_name: "ParticipantAddresses"
end
