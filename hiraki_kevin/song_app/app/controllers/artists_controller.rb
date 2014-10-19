class ArtistsController < ApplicationController

def index
	@artists = Artist.all
end

def new
end

def create
end

def show
end

def edit
end

def update
end

def destroy
end

private

#DRY: used by show, edit, destroy
def artist_params
	params.require(:artist).permit(:name, :description, :image)
end

# def find.artist
# 	Artist.find(params[:id])
# end

end
