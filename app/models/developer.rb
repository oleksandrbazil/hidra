class Developer < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :projects, through: 'works'
  has_many :works

  def full_name
    "#{first_name} #{last_name}"
  end
end
