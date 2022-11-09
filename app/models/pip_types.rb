require 'composite_primary_keys'
class PipTypes <  PgRecord
  self.table_name = 'pip_types'
  self.primary_keys = :pip_type_code, :pip_type_catg

  has_many :desg_interests, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "DesgInterests"
  has_many :desg_payments, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "DesgPayments"
  has_many :pip_arrg_type_rules, :foreign_key => [:pip_type, :pip_type_catg], class_name: "PipArrgTypeRules"
  has_many :pip_type_subj_rules, :foreign_key => [:pip_type_code, :pip_type_catg], class_name: "PipTypeSubjRules"

end
