json.extract! comment, :id, :comment_title, :comment_body, :comment_image_id, :tweet_id, :user_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
