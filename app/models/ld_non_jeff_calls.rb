require 'composite_primary_keys'
class LdNonJeffCalls < ActiveRecord::Base
  self.table_name = 'lis.ld_non_jeff_calls'
  self.primary_keys = :legal_desc_key, :legal_desc_seg, :polygon_seq, :call_num
  belongs_to :ld_jeff_header, :foreign_key => [:legal_desc_key, :legal_desc_seg], class_name: "LdNonJeff"
end

