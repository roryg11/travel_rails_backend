class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description
end
