class OmnicalcController < ApplicationController

  # only classes are camel cased !

  def calculators
    render({ :template => "calc_templates/home" })
  
  end

  def square_calc
    render( { template: "calc_templates/home"})
  end

  def square_results
    @the_num = params.fetch("user_num").to_f
    @the_result = @the_num ** 2
    render({ template: "calc_templates/calc_square"} )
  end

  def payment_new
    render(template: "calc_templates/calc_payment")
  end


end
