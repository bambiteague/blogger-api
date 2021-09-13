class CommentsController < ApplicationController
  
  def index
    comments = Comment.all 
    render json: comments.to_json(:include => :author)
  end
end
