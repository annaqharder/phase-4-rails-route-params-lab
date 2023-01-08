class Student < ApplicationRecord

  # class method written using a scope
  scope :by_name, ->(name) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }

  def to_s
    "#{first_name} #{last_name}"
  end

end
