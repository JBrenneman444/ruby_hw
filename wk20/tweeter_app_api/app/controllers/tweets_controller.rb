class TweetsController < ApplicationController
    
    def index
        tweets = Tweet.all
        render json: {status: 200, tweets: tweets}
    end

    def show
        tweet = Tweet.find(params[:id])
        render json: {status: 200, tweet: tweet}
    end

    def create
        tweet = Tweet.new(tweet_params)
    
        if tweet.save
          render(json: { tweet: tweet }, status: 201)
        else
          # Unprocessable Entity
          render(json: { tweet: tweet }, status: 422)
        end
    end
  
    def update
        tweet = Tweet.find(params[:id])
        tweet.update(tweet_params)
        render(json: {tweet: tweet}, status: 200)
    end

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy()
        render(json: {tweet: tweet}, status: 204)
    end

    private # Any methods below here
  
    def tweet_params
      # Returns a sanitized hash of the params with nothing extra
      params.required(:tweet).permit(:title, :content, :author)
    end
end