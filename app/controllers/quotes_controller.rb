class QuotesController < InheritedResources::Base
  # max_paginates_per 10
  def index
    @quotes = Quote.page(params[:page]).per(10)
  end
end
