class Api::V1::TweetsController < ApplicationController
  include ActionController::Serialization

  def index
    if params[:article_id]
      render json: Tweet.where(article_id: params[:article_id]).order(created_at: :desc).limit(200)
    else
      render json: Tweet.all.order(created_at: :desc).limit(200)
    end
  end
end
