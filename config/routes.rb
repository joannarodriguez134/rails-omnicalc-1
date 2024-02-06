Rails.application.routes.draw do

  get("/", { :controller =>"omnicalc", :action =>"calculators" })
  
end
