class Companies < PgRecord
  self.table_name = 'companies'
  self.primary_key = 'arrg_co_org_key'
end
