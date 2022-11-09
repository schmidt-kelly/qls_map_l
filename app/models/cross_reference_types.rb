class CrossReferenceTypes < PgRecord
  self.table_name = 'cross_reference_types'
  self.primary_key = 'xref_type_code'

  has_many :cross_references, foreign_key: 'xref_type', class_name: "CrossReferences"
end
