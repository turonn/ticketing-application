class TicketSerializer
  include JSONAPI::Serializer
  attributes :game_id, :user_id, :used, :ticket_code
end
