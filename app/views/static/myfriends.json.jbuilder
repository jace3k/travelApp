json.current_user current_user.username
json.friends current_user.friendships do |friendship|
  json.friend friendship.friend.username
end
json.friended_users current_user.inverse_friends do |friend|
  json.friend friend.username
end
