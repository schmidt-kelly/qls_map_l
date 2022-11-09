class PgRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :pg }
end

