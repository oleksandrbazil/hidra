class Work < ApplicationRecord
  belongs_to :project
  belongs_to :developer
  belongs_to :client
end
