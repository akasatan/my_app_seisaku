json.extract! tweet, :id, :title, :body, :image_id, :user_id, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
