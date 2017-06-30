class CreateJoinTableStudentEvaluation < ActiveRecord::Migration[5.1]
  def change
    create_join_table :students, :evaluations do |t|
      t.index [:student_id, :evaluation_id]
      t.index [:evaluation_id, :student_id]
    end
  end
end
