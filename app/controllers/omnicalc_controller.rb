class OmnicalcController < ApplicationController

  # only classes are camel cased !

  def calculators
    render({ :template => "calc_templates/home" })
  
  end

  def square_calc
    render( { template: "calc_templates/square_new"})
  end


end
