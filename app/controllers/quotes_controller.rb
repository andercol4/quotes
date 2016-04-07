class QuotesController < InheritedResources::Base
  def index
    @quotes = Quote.page params[:page]
  end
end
