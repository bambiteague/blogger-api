class PostsController < ApplicationController

  def index
    posts = Post.all
    render json: posts.to_json(:include => :author)
  end

end
