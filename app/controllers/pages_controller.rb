class PagesController < ApplicationController
  def batman
	
  end
  def batmanvssuperman
  	render layout: "batmanvssuperman"
  	@votossupermen = VotosSuperman.all
    @votos_batman = VotosBatman.all
    
    @a=2;

  end
  def superman
    render layout: "supermanlayout" 
  
  end

  def votos_superman
  	if params[:nombre].present? && params[:email].present?
  		@votos_superman = VotosSuperman.new
  		@votos_superman.nombre = params[:nombre]
  		@votos_superman.email = params[:email]
  		@votos_superman.save
  		redirect_to pages_superman_path, notice: "VOTO INGRESADO CORRECTAMENTE"
  	else
  		redirect_to pages_batmanvssuperman_path, alert: "Ingrese todos los campos solicitados"
  	end
  end

  def votos_batman
  	if params[:nombre].present? && params[:email].present?
  		@votos_batman = VotosBatman.new
  		@votos_batman.nombre = params[:nombre]
  		@votos_batman.email = params[:email]
  		@votos_batman.save
  		redirect_to pages_batman_path, notice: "VOTO INGRESADO CORRECTAMENTE"
  	else
  		redirect_to pages_batmanvssuperman_path, alert: "Ingrese todos los campos solicitados"
  	end


  end


end
