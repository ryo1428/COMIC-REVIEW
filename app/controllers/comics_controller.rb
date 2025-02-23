class ComicsController < ApplicationController
  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
    @comic.user_id = current_user.id
    if @comic.save
      redirect_to comic_path
    else
      render :new
    end
  end

  def index
    @comics = Comic.page(params[:page])
  end

  def show
    @comics = Comic.find(params[:id])
    @comic_reviews = ComicReview.new
  end

  def destroy
    comic = Comic.find(params[:id])
    comic.destroy
    redirect_to comics_path
  end

end


  private

  def comic_params
    params.require(:comic).permit(:shop_name, :image, :caption)
  end
  
