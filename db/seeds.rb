User.destroy_all
Batch.destroy_all
Student.destroy_all
Evaluation.destroy_all

# Users
test_user1 = User.create(email: "test@test.com", password: "abc123")
test_user2 = User.create(email: "test2@test.com", password: "abc123")

# Batches
test_batch1 = Batch.create(number: 1, start_date: 16.months.ago, end_date: 14.months.ago, user: test_user1)
test_batch2 = Batch.create(number: 2, start_date: 14.months.ago, end_date: 12.months.ago, user: test_user1)
test_batch3 = Batch.create(number: 3, start_date: 12.months.ago, end_date: 10.months.ago, user: test_user1)
test_batch4 = Batch.create(number: 4, start_date: 10.months.ago, end_date: 8.months.ago, user: test_user1)
test_batch5 = Batch.create(number: 5, start_date: 8.months.ago, end_date: 6.months.ago, user: test_user1)

# Students Batch 1
test_student1 = Student.create(full_name: "Zumo Rito", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student2 = Student.create(full_name: "Shimo Zukushichi", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student3 = Student.create(full_name: "Meikitata Kikarin", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student4 = Student.create(full_name: "Takachi Kaaririka", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student5 = Student.create(full_name: "Tekuzu Shika", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student6 = Student.create(full_name: "Zushiku Toteka", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)
test_student7 = Student.create(full_name: "Arikashi Moto", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch1)

# Students Batch 2
test_student1 = Student.create(full_name: "Toki Motaku", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student2 = Student.create(full_name: "Rinka Shifu", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student3 = Student.create(full_name: "Chimo Rin", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student4 = Student.create(full_name: "Jishiku Mimika", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student5 = Student.create(full_name: "Katakimi Kika", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student6 = Student.create(full_name: "Shimoteku Kashita", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)
test_student7 = Student.create(full_name: "Rinfu Rin", photo: "http://res.cloudinary.com/dmj1w2it5/image/upload/v1496051293/sample.jpg", last_evaluation: "red", batch: test_batch2)

# Evaluations 
test_evaluation1 = Evaluation.create(color: "red")
test_evaluation1 = Evaluation.create(color: "yellow")
test_evaluation1 = Evaluation.create(color: "green")