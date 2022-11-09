class QhistEvents <  PgRecord
    self.table_name = 'qhist_events'
    self.primary_key = 'event_hist_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    belongs_to :stipulation_date, foreign_key: 'stip_key', class_name: "StipulationDate"

end
