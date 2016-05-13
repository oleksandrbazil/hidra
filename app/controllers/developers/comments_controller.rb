class Developers::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Developer.find(params[:developer_id])
  end
end