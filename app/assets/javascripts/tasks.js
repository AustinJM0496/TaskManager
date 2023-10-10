(document).ready(function() {
  ('input[type="checkbox"]').change(function() {
    var checkbox = (this);
    var taskRow = checkbox.closest('tr');
    
    if (checkbox.is(':checked')) {
      // Move the task to the completed tasks table
      ('#completed-tasks tbody').append(taskRow);
      taskRow.addClass('completed-task');
    } else {
      // Move the task back to the original table
      ('#tasks-container tbody').append(taskRow);
      taskRow.removeClass('completed-task');
    }
  });
});
