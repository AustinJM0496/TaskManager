json.extract! task, :id, :name, :status, :order, :duedate, :location, :description, :created_at, :updated_at
json.url task_url(task, format: :json)
