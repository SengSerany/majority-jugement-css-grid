module HomeHelper
    def reset_and_generate_entry
        Candidat.destroy_all
        List.destroy_all
        Mark.destroy_all
        VoteForCandidat.destroy_all
        ActiveRecord::Base.connection.reset_pk_sequence!('candidats')
        ActiveRecord::Base.connection.reset_pk_sequence!('lists')
        ActiveRecord::Base.connection.reset_pk_sequence!('marks')
        ActiveRecord::Base.connection.reset_pk_sequence!('vote_for_candidats')
        
        puts "La base de donnée est clean"

        10.times do
            Candidat.create(name: Faker::Games::Pokemon.name)
        end
        puts "Les candidats sont créés"

        300.times do
            List.create!(voterName: Faker::Alphanumeric.alpha(number: 10) )
        end
        puts "Les listes sont créées"

        marks = ["exellent", "very_good", "good", "so_so", "not_really", "bad", "very_bad"]
        marks.each do |markTitle|
            Mark.create(title: markTitle)
        end
        puts "les notes sont créées"

        objectMarks = []
        Mark.all.each do |mark|
        objectMarks << mark
        end

        List.all.each do |list|
        Candidat.all.each do |candidat|
            VoteForCandidat.create(list: list, candidat: candidat, mark: objectMarks.sample)
        end
        end

        puts "les votes des listes sont créées"
    end

    def assign_vote
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
end
