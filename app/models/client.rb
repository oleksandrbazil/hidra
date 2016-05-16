class Client < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :projects

  def full_name
    "#{first_name} #{last_name}"
  end
end
