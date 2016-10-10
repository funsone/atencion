class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
if  !params[:search].nil?
    s = params[:search]



@personas = Persona.search s
  end
  @oficios=Oficio.all.paginate(:page => params[:page2]).order('created_at DESC')
  @solicituds=Solicitud.all.paginate(:page => params[:page]).order('created_at DESC')
end
end
