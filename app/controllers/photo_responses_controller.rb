class PhotoResponsesController < ApplicationController

  def index
    @photo_responses = PhotoResponse.all
  end

  def show
    @photo_response = PhotoResponse.find_by(id: params[:id])
  end

  def new
  end

  def create
    @photo_response = PhotoResponse.new
    @photo_response.photo_id = params[:photo_id]
    @photo_response.reply_id = params[:reply_id]

    if @photo_response.save
      redirect_to photo_responses_url, notice: "Photo response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo_response = PhotoResponse.find_by(id: params[:id])
  end

  def update
    @photo_response = PhotoResponse.find_by(id: params[:id])
    @photo_response.photo_id = params[:photo_id]
    @photo_response.reply_id = params[:reply_id]

    if @photo_response.save
      redirect_to photo_responses_url, notice: "Photo response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo_response = PhotoResponse.find_by(id: params[:id])
    @photo_response.destroy

    redirect_to photo_responses_url, notice: "Photo response deleted."
  end
end
