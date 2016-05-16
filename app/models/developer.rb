class Developer < ApplicationRecord
  has_many :comments, as: :commentable
  has_and_belongs_to_many :projects
  has_many :projects, through: 'works'
  has_many :works

  def full_name
    "#{first_name} #{last_name}"
  end
end
