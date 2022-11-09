class StipGroups <  PgRecord
  self.table_name = 'stip_groups'
  self.primary_key = 'stip_grp_cd'
  has_many :stipulation_provisions, foreign_key: 'stip_grp_cd', class_name: "StipulationProvisions"

end
