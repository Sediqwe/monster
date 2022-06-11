class StatController < ApplicationController
  def index
      @users = User.all.count
      @adminok = User.where(admin: [true]).count
      @download = Download.all.count
  end
end
