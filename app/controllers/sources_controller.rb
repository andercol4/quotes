class SourcesController < ApplicationController
  def index
    @sources = Source.order(:name)
  end

  def show
    @source = Source.find(params[:id])
    @quotes = @source.quotes
  end
end
