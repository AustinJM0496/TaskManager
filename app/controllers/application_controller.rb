class ApplicationController < ActionController::Base
    def sort_date
        
        @tasks = Task.order('created_at DESC')
        
    end
end
