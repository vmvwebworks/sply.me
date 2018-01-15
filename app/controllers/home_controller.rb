class HomeController < ApplicationController
  def index
    @countries = ISO3166::Country.all

  end
  # def users
  #   render :json => User.all
  # end
end
