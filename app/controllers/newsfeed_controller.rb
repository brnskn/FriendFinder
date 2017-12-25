class NewsfeedController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.order(created_at: :desc).all
    @post = Post.new
  end
end
