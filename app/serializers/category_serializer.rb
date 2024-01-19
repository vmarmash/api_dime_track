class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :owner

  def owner
    object.user.name.presence || object.user.email.presence
  end
end
