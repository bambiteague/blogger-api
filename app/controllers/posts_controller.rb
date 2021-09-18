class PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :update, :show]

  def index
    posts = Post.all
    render json: posts.to_json(:include => :author)
   end

  def show
    render json: post
  end
  
  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: :created, location: post
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def update
    render json: post
  end

  def destroy
    set_post.destroy
    render json: {message: "successful"}
  end

  private
   
    def set_post
      post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :comments,  :content)
    end

end
