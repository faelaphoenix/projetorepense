class Course < ActiveRecord::Base
  has_many :classrooms

  validates :name, presence: true, length: {maximum: 45}
  validates :description, presence: true, length: {maximum: 45}
  validates :status, presence: true

end
