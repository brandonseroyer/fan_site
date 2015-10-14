class ArtistsController < ApplicationController
  def new
    @genre = Genre.find(params[:genre_id])
    @artist = @genre.artists.new
  end

  def show
    @genre = Genre.find(params[:genre_id])
    @artist = Artist.find(params[:id])
    render :show
  end

  def create
    @genre = Genre.find(params[:genre_id])
    @artist = @genre.artists.new(artist_params)
    if @artist.save
      redirect_to genre_path(@artist.genre)
    else
      render :new
    end
  end

  def edit
    @genre = Genre.find(params[:genre_id])
    @artist = @genre.artists.find(params[:id])
    render :edit
  end

  def update
    @artist = Artist.find(params[:genre_id])
    if @artist.update(artist_params)
      redirect_to genres_path
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:genre_id])
    @artist.destroy
    redirect_to genres_path
  end
end

private
def artist_params
  params.require(:artist).permit(:name, :review)
end
