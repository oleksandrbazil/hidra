class Clients::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Client.find(params[:client_id])
  end
end