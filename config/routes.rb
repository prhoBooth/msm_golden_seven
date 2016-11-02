Rails.application.routes.draw do

# VIEW the directors list
  get("/", :controller => "directors", :action => "view_all")
  get("/directors", :controller => "directors", :action => "view_all")

# VIEW a specific director w/data
  get("/directors/:id", :controller => "directors", :action => "view_director")

# VIEW a specific director w/data
  get("/delete_director/:id", :controller => "directors", :action => "delete_director")

# Add a new director.
  get("/new_form", :controller => "directors", :action=>"new_form")
  get("/add_new", :controller => "directors", :action=>"add_new")

  # EDIT!!
    get("/directors/:id/edit_form", :controller => "directors", :action=>"edit_form")
    get("/update_director/:id", :controller => "directors", :action=>"update_director")
end
