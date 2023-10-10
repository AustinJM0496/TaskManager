# app/models/task.rb

class Task < ApplicationRecord
  # Define the category as an enum with two options: 'Personal' and 'Work'
  enum category: { personal: 'Personal', work: 'Work' }

  # Validations (you can customize these as needed)
  validates :name, presence: true
  validates :category, inclusion: { in: categories.keys }
  validates :duedate, presence: true
end
