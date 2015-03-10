User.create!([
  {id: 1, firstname: "Steven", lastname: "cassidy", email: "steven@example.com", password_digest: "$2a$10$M8FpJtRbPpiZskLuD137JuJiH5/0lz4sCaMoeTRgHMRheiEPowddK", created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09"},
  {id: 2, firstname: "Missy", lastname: "wimberly", email: "missy@example.com", password_digest: "$2a$10$obWCS1wQB6kWKPoVs49Wl.cVdnUQDbvPVi6DAtNXaDmUeCOUowcPi", created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09"},
  {id: 3, firstname: "Sagar", lastname: "rathi", email: "sagar@example.com", password_digest: "$2a$10$wsxLX9vsqudtfZuhQ3wOh.ZmfWV/asMGHV6/.Pfpudfd2Ht.IRPG2", created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09"},
  {id: 4, firstname: "Jay", lastname: "davis", email: "jay@example.com", password_digest: "$2a$10$z42hQotub.vuUonOiwp1S.m2ysBe/hl7IzqZU6slbjRkD1tB/wn0W", created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09"},
  {id: 5, firstname: "Anna", lastname: "taberski", email: "anna@example.com", password_digest: "$2a$10$c1oEONE46guVbsyfP/imDeAaNlMfmNBfFAQNhpZhp3P0dB7pdOaJ6", created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09"}
])

Council.create!([
  {id: 1, user_id: 1, council_name: "Steven's trusted advisors"},
  {id: 2, user_id: 2, council_name: "Missy's pals"},
  {id: 3, user_id: 4, council_name: "Apartment Council"},
  {id: 4, user_id: 5, council_name: "Spring Council"},
  {id: 5, user_id: 3, council_name: "Travel"}
])
CouncilMembership.create!([
  {id: 1, user_id: 2, council_id: 1},
  {id: 2, user_id: 3, council_id: 1},
  {id: 3, user_id: 3, council_id: 2},
  {id: 4, user_id: 4, council_id: 2},
  {id: 5, user_id: 2, council_id: 3},
  {id: 6, user_id: 5, council_id: 3},
  {id: 7, user_id: 2, council_id: 4},
  {id: 8, user_id: 3, council_id: 4},
  {id: 9, user_id: 4, council_id: 5},
  {id: 10, user_id: 1, council_id: 5}
])
Friendship.create!([
  {id: 1, user_id: 1, friend_id: 2, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 2, user_id: 2, friend_id: 1, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 3, user_id: 2, friend_id: 3, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 4, user_id: 3, friend_id: 2, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 5, user_id: 2, friend_id: 5, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 6, user_id: 5, friend_id: 2, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 7, user_id: 2, friend_id: 4, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 8, user_id: 4, friend_id: 2, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 9, user_id: 2, friend_id: 1, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 10, user_id: 4, friend_id: 5, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 11, user_id: 5, friend_id: 4, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 12, user_id: 3, friend_id: 4, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false},
  {id: 13, user_id: 4, friend_id: 3, created_at: "2015-03-10 11:21:09", updated_at: "2015-03-10 11:21:09", status: false}
])
Question.create!([
  {id: 1, user_id: 2, council_id: 2, content: "Good dinner?", image_file_name: "food.jpg", image_content_type: "image/jpeg", image_file_size: 67183, image_updated_at: "2015-03-10 11:21:10", created_at: "2015-03-10 11:21:10", updated_at: "2015-03-10 11:21:10"},
  {id: 2, user_id: 1, council_id: 1, content: "Do you like this dress?", image_file_name: "coverpicture.JPG", image_content_type: "image/jpeg", image_file_size: 16192, image_updated_at: "2015-03-10 11:21:12", created_at: "2015-03-10 11:21:13", updated_at: "2015-03-10 11:21:13"},
  {id: 3, user_id: 1, council_id: 1, content: "Do you like this store?", image_file_name: "store.JPG", image_content_type: "image/jpeg", image_file_size: 2071088, image_updated_at: "2015-03-10 11:21:13", created_at: "2015-03-10 11:21:13", updated_at: "2015-03-10 11:21:17"},
  {id: 4, user_id: 1, council_id: 1, content: "picnic time?", image_file_name: "park.JPG", image_content_type: "image/jpeg", image_file_size: 2034994, image_updated_at: "2015-03-10 11:21:18", created_at: "2015-03-10 11:21:18", updated_at: "2015-03-10 11:21:21"},
  {id: 5, user_id: 1, council_id: 1, content: "Should I buy this iphone?", image_file_name: "phone.jpg", image_content_type: "image/jpeg", image_file_size: 40503, image_updated_at: "2015-03-10 11:21:22", created_at: "2015-03-10 11:21:22", updated_at: "2015-03-10 11:21:22"},
  {id: 6, user_id: 3, council_id: 5, content: "Should I take a swim after?", image_file_name: "seine.jpg", image_content_type: "image/jpeg", image_file_size: 58052, image_updated_at: "2015-03-10 11:21:23", created_at: "2015-03-10 11:21:23", updated_at: "2015-03-10 11:21:23"},
  {id: 7, user_id: 4, council_id: 3, content: "Should I rent this apartment?", image_file_name: "wilde.jpg", image_content_type: "image/jpeg", image_file_size: 121962, image_updated_at: "2015-03-10 11:21:24", created_at: "2015-03-10 11:21:24", updated_at: "2015-03-10 11:21:24"},
  {id: 8, user_id: 5, council_id: 4, content: "Is it spring yet?", image_file_name: "spring.jpg", image_content_type: "image/jpeg", image_file_size: 5718895, image_updated_at: "2015-03-10 11:21:25", created_at: "2015-03-10 11:21:25", updated_at: "2015-03-10 11:21:33"},
  {id: 9, user_id: 2, council_id: 2, content: "Is he cute?", image_file_name: "sparta.JPG", image_content_type: "image/jpeg", image_file_size: 7044, image_updated_at: "2015-03-10 11:21:35", created_at: "2015-03-10 11:21:35", updated_at: "2015-03-10 11:21:35"}
])
Answer.create!([
  {id: 1, question_id: 1, user_id: 3, like: true, created_at: "2015-03-10 11:21:12", updated_at: "2015-03-10 11:21:12"},
  {id: 2, question_id: 2, user_id: 1, like: true, created_at: "2015-03-10 11:21:13", updated_at: "2015-03-10 11:21:13"},
  {id: 3, question_id: 3, user_id: 1, like: true, created_at: "2015-03-10 11:21:18", updated_at: "2015-03-10 11:21:18"},
  {id: 4, question_id: 4, user_id: 1, like: true, created_at: "2015-03-10 11:21:22", updated_at: "2015-03-10 11:21:22"},
  {id: 5, question_id: 5, user_id: 1, like: false, created_at: "2015-03-10 11:21:23", updated_at: "2015-03-10 11:21:23"},
  {id: 6, question_id: 6, user_id: 1, like: true, created_at: "2015-03-10 11:21:24", updated_at: "2015-03-10 11:21:24"},
  {id: 7, question_id: 7, user_id: 4, like: true, created_at: "2015-03-10 11:21:25", updated_at: "2015-03-10 11:21:25"},
  {id: 8, question_id: 8, user_id: 5, like: true, created_at: "2015-03-10 11:21:35", updated_at: "2015-03-10 11:21:35"},
  {id: 9, question_id: 9, user_id: 2, like: true, created_at: "2015-03-10 11:21:36", updated_at: "2015-03-10 11:21:36"}
])
