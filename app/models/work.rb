class Work < ApplicationRecord
  belongs_to :project
  belongs_to :developer
  enum status: [ :default, :pending, :in_progress, :done ]

end
