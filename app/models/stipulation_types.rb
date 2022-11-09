require 'composite_primary_keys'
class StipulationTypes <  PgRecord
  self.table_name = 'stipulation_types'
  self.primary_keys = :stip_catg_code, :stip_type_code

  has_many :stipulation_obligations, :foreign_key => [:stip_catg_code, :stip_type_code], class_name: "StipulationObligations"
  has_many :stip_type_subj_rules, :foreign_key => [:stip_type_catg, :stip_type_code], class_name: "StipTypeSubjRules"
end