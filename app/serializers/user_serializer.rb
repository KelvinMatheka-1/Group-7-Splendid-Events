class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :image_url, :contacts, :password_digest
end
