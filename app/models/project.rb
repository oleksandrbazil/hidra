class Project < ApplicationRecord
  has_many :comments, as: :commentable
  has_and_belongs_to_many :developers
  accepts_nested_attributes_for :developers, reject_if: :all_blank, allow_destroy: true
end
