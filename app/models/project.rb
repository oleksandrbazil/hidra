class Project < ApplicationRecord
  has_many :comments, as: :commentable
  belongs_to :client
  has_many :developers, through: 'works'
  has_many :works
  accepts_nested_attributes_for :developers, reject_if: :all_blank, allow_destroy: true
end
