class User < ApplicationRecord
  # Note: It only works with sqlite3
  scope :find_by_cwday, -> (cwday) { where(%(strftime('%w', updated_at) like ?), cwday) }
end
