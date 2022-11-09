require 'composite_primary_keys'
class MultipleAddresses <  PgRecord
    self.table_name = 'multiple_addresses'
    self.primary_keys = :desg_key, :prtp_key, :prtp_addr_key

    belongs_to :desg_interests, foreign_key: 'desg_key', class_name: "DesgInterests"
    belongs_to :participant_addresses, :foreign_key => [:prtp_key, :prtp_addr_key], class_name: "ParticipantAddresses"
end
