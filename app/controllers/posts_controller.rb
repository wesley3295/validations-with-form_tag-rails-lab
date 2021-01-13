class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  
  
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
      
      def show
        @post = Post.find(params[:id])
      end
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
