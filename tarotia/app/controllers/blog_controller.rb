class BlogController < ApplicationController
  def index
    @posts = Post.published
    @featured_post = Post.featured.first || @posts.first
  end

  def show
    @post = Post.published.find_by!(slug: params[:slug])
    @related_posts = Post.published.where.not(id: @post.id).limit(3)
  end
end