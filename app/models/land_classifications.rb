class LandClassifications < PgRecord
  self.table_name = 'land_classifications'
  self.primary_key = 'land_cls_code'

  has_many :all_agreements, foreign_key: 'land_cls_code', class_name: "AllAgreements"
  has_many :land_class_subj_rules, foreign_key: 'land_cls_code', class_name: "LandClassSubjRules"

end
