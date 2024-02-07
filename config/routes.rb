Rails.application.routes.draw do

  get("/", { :controller =>"omnicalc", :action =>"calculators" })

  get("/square/new", { :controller => "omnicalc", :action => "square_calc"})

  get("/square/results", { :controller => "omnicalc", :action => "square_results"})

  get("/square_root/new", { :controller => "omnicalc", :action => "square_root_calc"})

  get("/square_root/results", { :controller => "omnicalc", :action => "square_root_results"})

  get("/payment/new", { controller: "omnicalc", action: "payment_new"})

  get("/payment/new/results", { controller: "omnicalc", action: "payment_new_results"})

  get("/random/new", { controller: "omnicalc", action: "random_new"})

  get("/random_new/results", { controller: "omnicalc", action: "random_results"})
  
end
