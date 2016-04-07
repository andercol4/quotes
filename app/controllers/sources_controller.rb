class SourcesController < ApplicationController
  def index

  end

  def show
    @source = Source.find(params[:id])
    @quotes = Quote.page params[:page]
  end
end
