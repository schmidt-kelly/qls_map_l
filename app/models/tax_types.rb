class TaxTypes < PgRecord
  self.table_name = 'tax_types'
  self.primary_key = 'tax_type_code'

  has_many :participants, foreign_key: 'tax_type_code', class_name: "Participants"

end
