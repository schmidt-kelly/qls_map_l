class AddnLessors < PgRecord
    self.table_name = 'addn_lessors'
    self.primary_key = 'seq_num'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :participant_addresses, :foreign_key => [:prtp_key, :prtp_addr_key], class_name: "ParticipantAddresses"
    belongs_to :addn_party_types, foreign_key: 'party_type_code', class_name: "AddnPartyTypes"

end
