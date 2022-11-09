class CrossReferences < PgRecord
    self.table_name = 'cross_references'
    self.primary_key = 'xref_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :cross_reference_types, foreign_key: 'xref_type', class_name: "CrossReferenceTypes"
    belongs_to :cross_reference_src, foreign_key: 'xref_src_key', class_name: "CrossReferenceSrc"
end
