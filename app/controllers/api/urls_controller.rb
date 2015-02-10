class Api::UrlsController < ApplicationController
  respond_to :json, :xml

  def create
    respond_with Url.create(url_params)
  end

  private

  def url_params
    params.require(:url).permit(:long)
  end

end
