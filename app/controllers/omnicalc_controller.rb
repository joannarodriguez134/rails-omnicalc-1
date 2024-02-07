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

  def payment_new_results
    apr = params.fetch("users_apr").to_f / 100 / 12 # Keep APR as a float for calculation
  @payment_years = params.fetch("users_num_years").to_i * 12
  principal = params.fetch("users_principal").to_f
  monthly_payment = principal * apr / (1 - (1 + apr) ** -@payment_years)
  
  @payment_apr = apr.to_fs(:percentage, { :precision => 4 }) # Format for display
  @payment_principal = principal.to_fs(:currency, { :precision => 2 })
  @monthly_payment = monthly_payment.to_fs(:currency, { :precision => 2 }) # Format the result
    render(template: "calc_templates/calc_payment_results")
  end


end
