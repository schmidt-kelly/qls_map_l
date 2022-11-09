class AddnPartyTypes < PgRecord
  self.table_name = 'addn_party_types'
  self.primary_key = 'party_type_code'
  has_many :addn_lessors, foreign_key: 'party_type_code', class_name: "AddnLessors"
end
