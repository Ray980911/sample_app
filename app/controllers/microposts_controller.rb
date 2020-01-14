class MicropostsController < ApplicationController

  def show
    @user = User.find_by(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
end
