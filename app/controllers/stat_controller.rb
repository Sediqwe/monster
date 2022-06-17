class StatController < ApplicationController
  def index
      @users = User.all.count
      @adminok = User.where(admin: [true]).count
      @download = Download.all.count
      @game_all = Game.all.count
      @game_uploaded_file = Upload.all.count
  end
end
