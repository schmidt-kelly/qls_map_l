class Events < PgRecord
    self.table_name = 'events'
    self.primary_key = 'evnt_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :stipulation_date, foreign_key: 'stip_key', class_name: "StipulationDate"

end
