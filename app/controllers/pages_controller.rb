class PagesController < ApplicationController
  def index
    @q = Post.search(params[:q])
    @posts = @q.result(:distinct => true)

    respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @posts }
  end
end
end
