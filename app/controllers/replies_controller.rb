class RepliesController < ApplicationController

  def index
    @replies = Reply.all
  end

  def show
    @reply = Reply.find_by(id: params[:id])
  end

  def new
  end

  def create
    @reply = Reply.new
    @reply.user_id = params[:user_id]
    @reply.request_id = params[:request_id]
    @reply.reply_text = params[:reply_text]
    @reply.expert_star_rating = params[:expert_star_rating]
    @reply.expert_review = params[:expert_review]
    @reply.traveler_star_rating = params[:traveler_star_rating]

    if @reply.save
      redirect_to replies_url, notice: "Reply created successfully."
    else
      render 'new'
    end
  end

  def edit
    @reply = Reply.find_by(id: params[:id])
  end

  def update
    @reply = Reply.find_by(id: params[:id])
    @reply.user_id = params[:user_id]
    @reply.request_id = params[:request_id]
    @reply.reply_text = params[:reply_text]
    @reply.expert_star_rating = params[:expert_star_rating]
    @reply.expert_review = params[:expert_review]
    @reply.traveler_star_rating = params[:traveler_star_rating]

    if @reply.save
      redirect_to replies_url, notice: "Reply updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @reply = Reply.find_by(id: params[:id])
    @reply.destroy

    redirect_to replies_url, notice: "Reply deleted."
  end
end
