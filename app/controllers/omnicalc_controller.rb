class OmnicalcController < ApplicationController

  def calculators
    render({ :template => "calc_templates/home" })
  
  end


end
