Rails.application.routes.draw do
  
  get("/random/new", {:controller => "program", :action => "index"})
  
  get("/random/results", {:controller => "program", :action => "result"})

  get("/payment/new", {:controller => "program", :action => "payment"})

  get("/payment/results", {:controller => "program", :action => "payment_result"})

  get("/square/new", {:controller => "program", :action => "square"})

  get("/square/results", {:controller => "program", :action => "square_solution"})

  get("/square_root/new", {:controller => "program", :action => "square_root"})

  get("/square_root/results", {:controller => "program", :action => "root_solution"})

end
