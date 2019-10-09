class VoteForCandidat < ApplicationRecord
  belongs_to :candidat
  belongs_to :mark
  belongs_to :list
end
