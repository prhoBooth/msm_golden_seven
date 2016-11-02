class DirectorsController < ApplicationController
  def view_all
    @directors=Director.all
    render("view_all.html.erb")
  end

  def view_director
    @director = Director.find(params[:id])
    render("view_director.html.erb")
  end

  def delete_director
    @director = Director.find(params[:id])
    @director.destroy
    render("delete_director.html.erb")
  end

def new_form
  render("new_form.html.erb")
end

def add_new
  @director = Director.new
  @director.name = params[:name]
  @director.bio = params[:bio]
  @director.dob = params[:dob]
  @director.image_url = params[:image_url]
  @director.save

  redirect_to("/directors")
  # view_all
end

def edit_form
  @director = Director.find(params[:id])
end

def update_director
@director = Director.find(params[:id])
@director.name = params[:name]
@director.bio = params[:bio]
@director.dob = params[:dob]
@director.image_url = params[:image_url]
@director.save

view_all
end

end
