require 'composite_primary_keys'
class StipGroupSubjRules <  PgRecord
  self.table_name = 'stip_group_subj_rules'
  self.primary_keys = :stip_grp_cd, :subj_code

  belongs_to :stip_type_subj_rules, :foreign_key => [:stip_type_catg, :stip_type_code, :subj_code], class_name: "StipTypeSubjRules"

  has_many :stip_group_subj_rules_rltn, :foreign_key => [:stip_grp_cd, :subj_code], class_name: "StipGroupSubjRulesRltn"
end

