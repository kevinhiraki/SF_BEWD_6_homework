class PostsController < ApplicationController
end

def index
	@posts = Post.all
end

def new	
	@post = Post.new
end

def create
	@post = Post.create(post_params)
	if @post.save
		redirect_to @post
	else
		render 'new'
	end
end

#What am I doing in the above section of code? I
#am defining the RESTful action of "create" that
#passes in the parameters of posts (which is title & text)
#and I am telling the "create" RESTful action to save
#the instance variable to the database (presumably to the 20141015201002_create_posts.rb?)
#if the post saves, then redirect the user to the "posts index page"
#else, render to the RESTful action "new" (which is not yet defined)


# def create
# 	@post = Post.new(params[:post])
# 	@post.save
# 	redirect_to @post
# end

def show
	@post = Post.find(params[:id])
end

def edit
end

def update
  @post = Post.find(params[:id])
 # Try to remember to ask about the syntax here. The
 # instance variable @post is equal to an object, which
 # a previous post that was submitted previously? 
  if @post.update(post_params)
    redirect_to @post
  else
    render 'edit'
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to posts_path
end

# Defining a method called "destroy" in which we will
# create an instance variable feeding in a previously 
# databased post and then we will destroy that instance (the post we called)
# and once the post is destroyed, we will redirect to the post index page



private

def find_post
  	Post.find(params[:id])
end

def post_params
	params.require(:post).permit(:title, :text)
end

