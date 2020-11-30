class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end


  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{ post: post }
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      # ここで使用しているcheckedはdbで設定したboolean型のcheckedのことtrueとfalseで選別できてそれがif文と連結している
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
