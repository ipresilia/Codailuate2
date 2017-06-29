User.destroy_all
Batch.destroy_all

test_user1 = User.create(email: "test@test.com", password: "abc123")

test_batch1 = Batch.create(number: 1, start_date: 16.months.ago, end_date: 14.months.ago, user: test_user1)

test_student1 = Student.create(full_name: "Jane Doe", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
