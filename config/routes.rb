Rails.application.routes.draw do

  get("/", { :controller =>"omnicalc", :action =>"calculators" })

  get("/square/new", { :controller => "omnicalc", :action => "square_calc"})

  get("/square/results", { :controller => "omnicalc", :action => "square_results"})

  get("/payment/new", { controller: "omnicalc", action: "payment_new"})

  get("/payment/new/results", { controller: "omnicalc", action: "payment_new_results"})
  
end
