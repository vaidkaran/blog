json.array! Post.all.each do |post|
  json.id post.id
  json.title post.title
  json.body post.body
  json.created_at post.created_at
  json.updated_at post.updated_at
end
