require 'composite_primary_keys'
class XreferencedAgmtsM < PgRecord
  self.table_name = 'xreferenced_agmts_m'
  self.primary_keys = :active_arrg_key, :related_arrg_key

  belongs_to :all_agreements, foreign_key: 'active_arrg_key', class_name: "AllAgreements"
  # belongs_to :all_agreements, foreign_key: 'related_arrg_key', class_name: "AllAgreements"
  # two FKs both link to arrg_key in all agreements?
end
