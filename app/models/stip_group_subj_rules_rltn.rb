require 'composite_primary_keys'
class StipGroupSubjRulesRltn <  PgRecord
  self.table_name = 'stip_group_subj_rules_rltn'
  self.primary_keys = :stip_grp_cd,  :stip_type_catg, :stip_type_code, :subj_code

  belongs_to :stip_group_subj_rules, :foreign_key => [:stip_grp_cd, :subj_code], class_name: "StipGroupSubjRules"
end

