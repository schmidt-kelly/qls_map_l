require 'composite_primary_keys'
class DesgTransferHistories < PgRecord
    self.table_name = 'desg_transfer_histories'
    # self.primary_key = 'hist_seq_no'  -- this column is only in dbk's model
    self.primary_keys = :desg_key, :arrg_key, :orig_prtp_key

end
