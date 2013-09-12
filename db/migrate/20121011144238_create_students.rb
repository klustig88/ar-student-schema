require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email
      t.string :phone
    end


    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
    end

    create_table :students_teachers do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
