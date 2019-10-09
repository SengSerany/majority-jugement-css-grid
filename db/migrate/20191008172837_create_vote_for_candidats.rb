class CreateVoteForCandidats < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_for_candidats do |t|
      t.belongs_to :candidat, foreign_key: true
      t.belongs_to :mark, foreign_key: true
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
