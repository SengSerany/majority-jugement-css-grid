class Mark < ApplicationRecord
    has_many :vote_for_candidats, dependent: :nullify
end
