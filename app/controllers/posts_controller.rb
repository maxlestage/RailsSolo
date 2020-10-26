class PostsController < ApplicationController


  # @posts si il s'agit de plusieurs posts 
  # @post si je travail uniquement sur un seul post 
  # NB dans le cas présent nous affichons dans l'index tous les posts 
  # Dans les vues sho edit et update on affiche que un post à la fois. 

  def index
    @posts = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  def new 
    @post = Post.new
  end

  def create 
    post = Post.create(post_params)
    redirect_to post_path(post.id)
  end

  def destroy 
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path 
  end
  
  private

  def post_params
    params.require(:post).permit(:name, :content)
  end
end
