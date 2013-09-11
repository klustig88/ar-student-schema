require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, uniqueness: true
  validates :email, :format => {:with => /\w+@\w+.\w{2,}/, message: 'Invalid email'}
  validates :age, :numericality => { greater_than: 5 }
  validates :phone, format: { with: /.{10}/, message: 'Beep!' }

  def name
    first_name + " " + last_name
  end

  def age
    Date.today.year - birthday.year
  end
end
