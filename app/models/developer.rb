class Developer < ApplicationRecord
  has_many :comments, as: :commentable
  has_and_belongs_to_many :projects
end
