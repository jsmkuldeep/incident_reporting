class Incident < ApplicationRecord
validates :description, presence: true
end
