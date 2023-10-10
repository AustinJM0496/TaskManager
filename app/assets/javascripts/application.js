//= require jquery
//= require jquery_ujs
//= require_tree .
// app/assets/javascripts/tasks.js (or your custom JavaScript file)
document.addEventListener("DOMContentLoaded", () => {
  const tasksContainer = document.getElementById("tasks-container");
  const completedTasksTable = document.getElementById("completed-tasks");

  const tasks = Array.from(tasksContainer.querySelectorAll("tr"));

  tasks.forEach((taskRow) => {
    const isCompleted = taskRow.classList.contains("completed-task");

    if (isCompleted) {
      completedTasksTable.querySelector("tbody").appendChild(taskRow);
    }
  });
});
