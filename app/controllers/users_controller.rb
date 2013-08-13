class UsersController < ApplicationController
  def index
    @page = (params[:page] || 1).to_i
    @users = User.by_karma.page(@page)
  end
end

