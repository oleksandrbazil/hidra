class Client < ApplicationRecord
  has_many :comments, as: :commentable
end
