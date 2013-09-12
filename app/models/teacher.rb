require_relative '../../db/config'


class Teacher < ActiveRecord::Base
  validates :email, uniqueness: true, :format => {:with => /\w+@\w+.\w{2,}/, message: 'Invalid email'}
  
  has_many :students_teachers, foreign_key: :teacher_id
  has_many :students, through: :students_teachers
end


