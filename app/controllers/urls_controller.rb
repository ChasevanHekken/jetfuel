class UrlsController < ApplicationController

  def home
    @url = Url.new

    @urls = Url.order(rank: :desc)
  end

  def create
    @url = Url.create(url_params)
    redirect_to :root
  end

  def show
    if params[:slug]
      @url = Url.find_by(short: params[:slug])
      if redirect_to @url.long
        @url.rank += 1
        @url.save
      end
    else
      @url = Link.find(params[:id])
    end
  end

  private

  def url_params
    params.require(:url).permit(:long)
  end

end
