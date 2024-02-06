Rails.application.routes.draw do

  get("/", { :controller =>"omnicalc", :action =>"calculators" })

  get("/square/new", { :controller => "omnicalc", :action => "square_calc"})

  
  
end
