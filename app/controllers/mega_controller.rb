class MegaController < ApplicationController
  before_action :authorized?, only: %i[new edit update destroy]
  def index
    @storage = Rmega.login("szedmakistvan@yahoo.com", Rails.application.credentials.meganz)
    #public_url = 'https://mega.nz/file/IOxkzCSJ#1Wr88541pco5mQMgC9P2zTdBGnSD3BIvvBeo7dEUoX8'
    ##storage.download(public_url, 'tmp')
    public_url = 'https://mega.nz/file/FYlgSRQC#Y9nYMlZNxhsGMYJCoCVwKHb-Akl8vwp8HOYPSpodml0'
    Rmega.download(public_url, 'tmp').login("szedmakistvan@yahoo.com", Rails.application.credentials.meganz)
  end
end
