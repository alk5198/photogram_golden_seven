class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
  @photo = Photo.find_by({ :id=>params[:id]})


end

def new_form
end

def create_row
  p = Photo.new
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save

# render("create_row.html.erb")
  redirect_to("http://localhost:3000/photos")
end

def destroy
  i=Photo.find_by({ :id=>params[:id]})
  i.destroy
  redirect_to("http://localhost:3000/photos")

end

def edit_form
  @photo = Photo.find_by({ :id=>params[:id]})


end
def update_row
    i=Photo.find_by({ :id=>params[:id]})
    i.caption = params[:the_caption]
    i.source = params[:the_source]
    i.save
  @photo = Photo.find_by({ :id=>params[:id]})
redirect_to("http://localhost:3000/photos/#{@photo.id}")



end

end
