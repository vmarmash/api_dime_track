class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :phone, :locale, :access_token, :refresh_token

  def access_token
    object.access_tokens.take.access_token
  end

  def refresh_token
    object.access_tokens.take.refresh_token
  end
end
