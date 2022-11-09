require 'composite_primary_keys'
class DlProjArrgRltn < PgRecord
   self.table_name = 'dl_proj_arrg_rltn'
   self.primary_keys = :arrg_key, :proj_key
   belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
end
