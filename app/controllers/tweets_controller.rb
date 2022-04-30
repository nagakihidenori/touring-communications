class TweetsController < ApplicationController

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
    @users = User.order("RAND()").limit(6)
  end

  def new
    @tweet = Tweet.new
  end
  
  def create
    Tweet.create(tweet_params)
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :image, :text, :keyword).merge(user_id: current_user.id)
  end

end
