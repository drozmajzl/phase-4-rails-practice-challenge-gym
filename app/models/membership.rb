class Membership < ApplicationRecord
    validates :gym_id, presence: true
    validates :client_id, presence: true, uniqueness: {scope: :gym_id}
    validates :charge, presence: true

    belongs_to :gym
    belongs_to :client

end
