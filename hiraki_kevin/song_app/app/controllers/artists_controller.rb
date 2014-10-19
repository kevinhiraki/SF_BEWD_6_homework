class ArtistsController < ApplicationController

def index
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

def artist_params
	params.require(:artist).permit(:name, :description, :image)
end

def find.artist
	Artist.find(params[:id])
end

end
