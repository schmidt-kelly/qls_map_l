class ArrgRemarks < PgRecord
    self.table_name = 'arrg_remarks'
    self.primary_key = 'rmk_key'
    belongs_to :all_agreements, foreign_key: 'arrg_key', class_name: "AllAgreements"
    has_many :arrg_remark_text, foreign_key: 'rmk_key', class_name: "ArrgRemarkText"
end
