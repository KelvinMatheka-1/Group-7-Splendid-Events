class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :event_image, :description, :time, :location, :date
end
