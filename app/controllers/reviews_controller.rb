class ReviewsController < ApplicationController
  def new

    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.new
  end

  def show
    @artist = Artist.find(params[:artist_id])
    @review = Review.find(params[:id])
    render :show
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.new(review_params)
    if @review.save
      redirect_to genre_path(@artist.genre)
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.find(params[:id])
    render :edit
  end

  def update
    @review = Review.find(params[:artist_id])
    if @review.update(review_params)
      redirect_to artists_path
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to artist_path
  end
end

private
def review_params
  params.require(:review).permit(:critique)
end
