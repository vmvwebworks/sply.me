class HomeController < ApplicationController
  def index
    @countries = Country.all
    @holaguapis = "hola guapis"
  end
  # def users
  #   render :json => User.all
  # end
end
