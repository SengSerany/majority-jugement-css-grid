class HomeController < ApplicationController
  

  def index
    @candidats = Candidat.all
  end
end

private

def set_candidat
  
  VoteForCandidat.all.each do |vote|
    candidat = Candidat.find(vote.candidat.id)
      if vote.mark_id == 1
        candidat.update(exellent: candidat.exellent + 1)
      elsif vote.mark_id == 2
        candidat.update(veryGood: candidat.veryGood + 1)
      elsif vote.mark_id == 3
        candidat.update(good: candidat.good + 1)
      elsif vote.mark_id == 4
        candidat.update(soSo: candidat.soSo + 1)
      elsif vote.mark_id == 5
        candidat.update(notReally: candidat.notReally + 1)
      elsif vote.mark_id == 6
        candidat.update(bad: candidat.bad + 1)
      elsif vote.mark_id == 7
        candidat.update(veryBad: candidat.veryBad + 1)
      end
  end

end