class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.string :color
      t.date :date
      t.text :remark

      t.timestamps
    end
  end
end
