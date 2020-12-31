class Game < ApplicationRecord
    validates :sport
    validates :gender, length: { maximum: 1 }, inclusion: { in: %w[f m u] }

end