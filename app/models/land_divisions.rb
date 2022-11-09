class LandDivisions < PgRecord
  self.table_name = 'land_divisions'
  self.primary_key = 'geog_key'

  has_many :all_agreements, foreign_key: 'arrg_org_key', class_name: "AllAgreements"
end
