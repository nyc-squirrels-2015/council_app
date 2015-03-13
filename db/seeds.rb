User.create!([
  {id: 1, firstname: "Steven", lastname: "Cassidy", email: "steven@gmail.com", password_digest: "$2a$10$wonZV.Lqn3bfk56uQPc4AejjwIlj.KQz4CtaWohhlq02p1dbsEBSO", prof_pic: "/steven.jpeg", created_at: "2015-03-13 00:06:48", updated_at: "2015-03-13 00:06:48"},
  {id: 2, firstname: "Missy", lastname: "Wimberly", email: "missy@gmail.com", password_digest: "$2a$10$2EgtPT8FrAUT2X7nlRyw2u2Af1MR6x4uzYbWLSBa.GMQhoTnuKneu", prof_pic: "/coverpicture.JPG", created_at: "2015-03-13 00:06:48", updated_at: "2015-03-13 00:06:48"},
  {id: 3, firstname: "Sagar", lastname: "Rathi", email: "sagar@gmail.com", password_digest: "$2a$10$ci/Jg7b6u7FZya2B4m0ETugKAV8qG4kuQhqrXBBi5iVxmzgbMN0CO", prof_pic: "/sagar.jpeg", created_at: "2015-03-13 00:06:48", updated_at: "2015-03-13 00:06:48"},
  {id: 4, firstname: "Jay", lastname: "Davis", email: "jay@gmail.com", password_digest: "$2a$10$xIbBs5Tp/xIUbqfWwALDyuOL8wBkaBspsxggK6Hko1Ga.Zzp3TLk2", prof_pic: "/jay.jpeg", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"},
  {id: 5, firstname: "Anna", lastname: "Taberski", email: "anna@gmail.com", password_digest: "$2a$10$O4TkisTHotM23vHZZ.5GlOHzTwb8DebxfSJEmViiRkpEpdjKmhIZm", prof_pic: "/anna.jpeg", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"}
])

Council.create!([
  {id: 1, user_id: 2, council_name: "Fashion", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"},
  {id: 2, user_id: 4, council_name: "Pets", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"},
  {id: 3, user_id: 5, council_name: "Food", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"},
  {id: 4, user_id: 5, council_name: "Costumes", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"},
  {id: 5, user_id: 3, council_name: "Weddings", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49"}
])


CouncilMembership.create!([
  {id: 1, user_id: 3, council_id: 1},
  {id: 2, user_id: 4, council_id: 1},
  {id: 3, user_id: 5, council_id: 1},
  {id: 4, user_id: 2, council_id: 2},
  {id: 5, user_id: 5, council_id: 2},
  {id: 6, user_id: 2, council_id: 3},
  {id: 7, user_id: 3, council_id: 3},
  {id: 8, user_id: 4, council_id: 3},
  {id: 9, user_id: 1, council_id: 3},
  {id: 10, user_id: 2, council_id: 4},
  {id: 11, user_id: 3, council_id: 4},
  {id: 12, user_id: 4, council_id: 4},
  {id: 13, user_id: 1, council_id: 4},
  {id: 14, user_id: 4, council_id: 5},
  {id: 15, user_id: 1, council_id: 5},
  {id: 16, user_id: 5, council_id: 5}
])

Friendship.create!([
  {id: 1, user_id: 5, friend_id: 2, created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49", status: false},
  {id: 2, user_id: 5, friend_id: 3, created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49", status: false},
  {id: 3, user_id: 5, friend_id: 4, created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49", status: false},
  {id: 4, user_id: 5, friend_id: 1, created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:49", status: false}
])

Question.create!([
  {id: 1, user_id: 5, council_id: 3, content: "Good dinner?", image_file_name: "food.jpg", image_content_type: "image/jpeg", image_file_size: 67183, image_updated_at: "2015-03-13 00:06:49", created_at: "2015-03-13 00:06:49", updated_at: "2015-03-13 00:06:50"},
  {id: 2, user_id: 2, council_id: 1, content: "Do you like this dress?", image_file_name: "coverpicture.JPG", image_content_type: "image/jpeg", image_file_size: 16192, image_updated_at: "2015-03-13 00:06:51", created_at: "2015-03-13 00:06:52", updated_at: "2015-03-13 00:06:52"},
  {id: 3, user_id: 5, council_id: 2, content: "Should I have a picnic time?", image_file_name: "park.JPG", image_content_type: "image/jpeg", image_file_size: 2034994, image_updated_at: "2015-03-13 00:06:52", created_at: "2015-03-13 00:06:52", updated_at: "2015-03-13 00:06:56"},
  {id: 4, user_id: 2, council_id: 5, content: "Should I take a swim after?", image_file_name: "seine.jpg", image_content_type: "image/jpeg", image_file_size: 58052, image_updated_at: "2015-03-13 00:06:59", created_at: "2015-03-13 00:06:59", updated_at: "2015-03-13 00:07:00"}

])

Answer.create!([
  {id: 1, question_id: 1, user_id: 3, like: true, created_at: "2015-03-13 00:06:51", updated_at: "2015-03-13 00:06:51"},
  {id: 2, question_id: 1, user_id: 4, like: true, created_at: "2015-03-13 00:06:51", updated_at: "2015-03-13 00:06:51"},
  {id: 3, question_id: 1, user_id: 2, like: true, created_at: "2015-03-13 00:06:51", updated_at: "2015-03-13 00:06:51"},
  {id: 4, question_id: 1, user_id: 1, like: false, created_at: "2015-03-13 00:06:51", updated_at: "2015-03-13 00:06:51"},
  {id: 5, question_id: 2, user_id: 1, like: true, created_at: "2015-03-13 00:06:52", updated_at: "2015-03-13 00:06:52"},
  {id: 6, question_id: 3, user_id: 1, like: false, created_at: "2015-03-13 00:06:59", updated_at: "2015-03-13 00:06:59"},
  {id: 7, question_id: 4, user_id: 1, like: true, created_at: "2015-03-13 00:07:00", updated_at: "2015-03-13 00:07:00"}
])


tables = ['users', 'councils', 'council_memberships', 'friendships', 'questions', 'answers']
tables.each do |tab|
   statement = " select setval('#{tab}_id_seq', (select max(id) from #{tab})) ; "
   ActiveRecord::Base.connection.execute(statement)
end

