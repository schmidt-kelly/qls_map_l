require 'composite_primary_keys'
class FormationsFilter < PgRecord
  self.table_name = 'formations_filter'
  self.primary_keys = :form_key, :ctry_code, :st_code, :cnty_code, :gpol_dtl_ctry_code, :gpol_dtl_st_key, :gpol_dtl_cnty_code

  belongs_to :formations, foreign_key: 'form_code', class_name: "Formations"
end
