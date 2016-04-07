class SourcesController < ApplicationController
  def index
    @sources = Source.order(:name).page params[:page]
  end

  def show
    @source = Source.find(params[:id])
    @quotes = Quote.page params[:page]
  end
end
