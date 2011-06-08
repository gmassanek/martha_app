class CreateQuestionaires < ActiveRecord::Migration
  def self.up
    create_table :questionaires do |t|
      t.string :name
      t.string :email
      t.text :q1
      t.text :q2
      t.text :q3
      t.text :q4
      t.text :q5
      t.text :q6
      t.text :q7
      t.text :q8
      t.text :q9

      t.timestamps
    end
  end

  def self.down
    drop_table :questionaires
  end
end
