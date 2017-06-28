User.destroy_all

test_user1 = User.create(email: "test@test.com", password: "abc123")

test_batch1 = Batch.create(number: 1, start_date: 16.months.ago, end_date: 14.months.ago, user: test_user1)
