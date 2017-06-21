class PagesController < ApplicationController
  def batman
  end
  def superman
  	render layout: "supermanlayout" 
  	
  end
end
