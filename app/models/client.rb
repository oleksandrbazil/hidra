class Client < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :projects
end
