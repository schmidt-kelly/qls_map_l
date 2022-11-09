class AllAgreements < PgRecord
  self.table_name = 'all_agreements'
  self.primary_key = 'arrg_key'

  has_many :legal_description_segments, foreign_key: 'arrg_key', class_name: "LegalDescriptionSegments"
  has_many :depth_intervals, foreign_key: 'arrg_key', class_name: "DepthIntervals"
  has_many :ld_sub_exhibit_desc, foreign_key: 'arrg_key', class_name: "LdSubExhibitDesc"
  has_many :ld_exhibit_desc, foreign_key: 'agmt_lvl_arrg_key', class_name: "LdExhibitDesc"
  has_many :acreages, foreign_key: 'arrg_key', class_name: "Acreages"
  has_many :arrg_remarks, foreign_key: 'arrg_key', class_name: "ArrgRemarks"
  has_many :stipulation_date, foreign_key: 'arrg_key', class_name: "StipulationDate"
  has_many :stipulation_obligations, foreign_key: 'arrg_key', class_name: "StipulationObligations"
  has_many :addn_lessors, foreign_key: 'arrg_key', class_name: "AddnLessors"
  has_many :recordations, foreign_key: 'arrg_key', class_name: "Recordations"
  has_many :desg_interests, foreign_key: 'arrg_key', class_name: "DesgInterests"
  has_many :cross_references, foreign_key: 'arrg_key', class_name: "CrossReferences"
  has_many :enh_calc_interest, foreign_key: 'arrg_key', class_name: "EnhCalcInterest"
  has_many :events, foreign_key: 'arrg_key', class_name: "Events"
  has_many :xreferenced_agmts_m, foreign_key: 'arrg_key', class_name: "XreferencedAgmtsM"
  has_many :arrg_st_cnty_rltn, foreign_key: 'arrg_key', class_name: "ArrgStCntyRltn"
  has_many :ra_arrg_rltn, foreign_key: 'ra_rltn_key', class_name: "RaArrgRltn"


  belongs_to :property_statuses, foreign_key: 'arrg_prop_stat_code', class_name: "PropertyStatuses"
  belongs_to :all_agreements, foreign_key: 'arrg_prnt_key', class_name: "AllAgreements"
  belongs_to :arrangement_types, foreign_key: 'arrg_type_code', class_name: "ArrangementTypes"
  belongs_to :mineral_product_types, foreign_key: 'mnrl_prod_type_code', class_name: "MineralProductTypes"
  belongs_to :land_divisions, foreign_key: 'arrg_org_key', class_name: "LandDivisions"
  belongs_to :land_classifications, foreign_key: 'land_cls_code', class_name: "LandClassifications"
  belongs_to :workspace_subject, foreign_key: 'subj_code', class_name: "WorkspaceSubject"
  belongs_to :arrangement_statuses, foreign_key: 'arrg_stat_code', class_name: "ArrangementStatuses"
  belongs_to :inactive_reasons, foreign_key: 'arrg_inac_rsn_code', class_name: "InactiveReasons"
  belongs_to :map_statuses, foreign_key: 'map_status', class_name: "MapStatuses"

end


