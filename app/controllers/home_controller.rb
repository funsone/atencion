class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
if  !params[:search].nil?
    s = params[:search]



@personas = Persona.search s
  end
end
end
