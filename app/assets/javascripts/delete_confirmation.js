document.addEventListener("DOMContentLoaded", function() {
  const deleteButtons = document.querySelectorAll(".delete-button");

  deleteButtons.forEach(button => {
    button.addEventListener("click", function(event) {
      const confirmation = confirm("Are you sure you want to delete this task?");
      if (!confirmation) {
        event.preventDefault(); // Cancel the default action if confirmation is not received
      }
    });
  });
});