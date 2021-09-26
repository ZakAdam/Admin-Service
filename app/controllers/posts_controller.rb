class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    puts params
    puts params[:file].class
    uploader = FileUploader.new
    if uploader.store!(params[:file])
      redirect_to root_path, notice: 'File successfully uploaded!'
    end
  end
end
