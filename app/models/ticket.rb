class Ticket < ApplicationRecord
    belongs_to :game
    belongs_to :user

    before_create :unique_code_maker

    def unique_code_maker
        self.ticket_code = SecureRandom.uuid
    end
end