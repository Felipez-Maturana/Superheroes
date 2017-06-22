class PagesController < ApplicationController
  def batman
  end
  def batmanvssuperman
  	render layout: "batmanvssuperman"
  end
  def superman
  	render layout: "supermanlayout" 
  end
end
