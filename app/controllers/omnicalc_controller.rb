class OmnicalcController < ApplicationController

  # only classes are camel cased !

  def calculators
    render({ :template => "calc_templates/home" })
  
  end

  def square_calc
    render( { template: "calc_templates/home"})
  end

  def square_results
    render({ template: "calc_templates/calc_square"} )
  end


end
