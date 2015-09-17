class ReviewController < ApplicationController
require 'RMagick'

  def main
     if user_signed_in?
       u =User.new
       u.nickname = params[:nickname]
       u.email = params[:email]
       u.save
     else
      redirect_to "/"
     end 
  end
  def read
    @post = Post.all
  end
  def write
    @post = Post.all
    new_post = Post.new
    new_post.p_password = params[:p_password]
    # new_post.p_content = params[:p_content]
    new_post.p_image = params[:image_file]
    new_post.save
    redirect_to "/review/custom_image_write"
  end

  def custom_image_write
    @posts = Post.all
    if params[:tag] #tag 부분
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end
  
  def save_text
    @post = Post.all
    @post.p_text = params[:submit_text]  #39~41 _slidebox 입력 데이터 받아옴
    @post.p_text_color = params[:colorpickerField1]
    @post.p_highlight = params[:colorpickerField2]
    @post.save
    
  end
  
  def write_reply
    new_reply = Reply.new
    new_reply.post_id = params[:p_id]
    new_reply.r_content = params[:r_content]
    new_reply.save
    redirect_to "/"
  end
  def delete
    @selected_post = Post.find(params[:id])
    confirm_password = Digest::SHA256.hexdigest params[:p_password]
    if @selected_post.post_password == confirm_password
       @selected_post.destroy
       @msg = "삭제 되었습니다."
    else
      @msg = "비밀번호가 틀렸습니다."
    end
  end
end
