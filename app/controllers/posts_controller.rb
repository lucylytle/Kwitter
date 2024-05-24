class PostsController < ApplicationController
  
  def index
    @post = Post.all
  end 

  def create 
    @post = Post.all
    @post["body"] = params["body"]
    @post["user_id"] = session["user_id"]
    @post.save
    redirect_to "/posts"
  end 

end
