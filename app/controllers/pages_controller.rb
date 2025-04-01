class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @hide_upperbar = true
    @all_users = User.where(username: ['erwann', 'alvaro', 'victoire', 'marc']) # Vérifie que ces utilisateurs existent
  end
end
