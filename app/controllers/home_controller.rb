class HomeController < ApplicationController

  include HomeHelper

  def index
    @candidats = Candidat.all
  end

  def update
    @candidats = Candidat.all
    reset_and_generate_entry
    assign_vote
    render action: "index"
  end
end
