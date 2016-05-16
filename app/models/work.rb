class Work < ApplicationRecord
  belongs_to :project
  belongs_to :developer
  enum status: [:todo, :in_progress, :in_review, :done]
end
