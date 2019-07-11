class GameSerializer < ActiveModel::Serializer
  attributes :updated_at, :state, :id 
end
