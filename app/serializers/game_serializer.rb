class GameSerializer
  include JSONAPI::Serializer
  attributes :sport, :gender, :level, :home_team, :visiting_team, :max_capacity, :event_date, :price
end
