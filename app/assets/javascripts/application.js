// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require jquery_ujs



import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


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

// application.js
(document).ready(function() {
  ('#tasks-table').DataTable();
});

