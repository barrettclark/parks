class Tenk < ApplicationRecord
  default_scope -> { order(:created_at) }
end
