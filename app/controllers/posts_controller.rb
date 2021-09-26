class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    puts params
    puts params[:file].class
    uploader = FileUploader.new
    uploader.store!(params[:file])
  end
end
