class QuotesController < InheritedResources::Base
  def index
    @qoutes = Quote.paginate(:page => params[:page], :per_page => 10)
  end
end
