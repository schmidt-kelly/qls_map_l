class CrossReferenceSrc < PgRecord
  self.table_name = 'cross_reference_src'
  self.primary_key = 'xref_src_key'
  has_many :cross_references, foreign_key: 'xref_src_key', class_name: "CrossReferences"
end
