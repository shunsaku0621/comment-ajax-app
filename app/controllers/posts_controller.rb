class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    set_post_column
  end


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      return redirect_to posts_path
    else
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    gon.comments = @comments
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to posts_path
    end
  end

  def edit
    @post = Post.find(params[:id])
    @form = PostsTag.new(post: @post)
  end

  

  private

  def post_params
    params.require(:post).permit(:text).merge(user_id: current_user.id)
  end


  def search_post
    @p = Post.ransack(params[:q])
  end


  def set_post_column
    @post_title = Post.select("genre_id").distinct 
  end



end
