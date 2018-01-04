class User < ApplicationRecord
  scope :find_by_cwday, -> (cwday) { where(%(strftime('%w', updated_at) like ?), cwday) }
end
