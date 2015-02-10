class UrlsController < ApplicationController

  def home
    @url = Url.new

    @urls = Url.all
  end

  def create
    @url = Url.create(url_params)
    redirect_to :root
  end

  private

  def url_params
    params.require(:url).permit(:long)
  end

end
