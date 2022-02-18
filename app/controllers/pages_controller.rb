class PagesController < ApplicationController
  def home
    @haunted_houses = HauntedHouse.all
  end
end
