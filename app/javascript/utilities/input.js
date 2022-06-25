document.addEventListener('turbolinks:load', function() {
  var password = document.getElementById("user_password");
  var confirm_password = document.getElementById("user_password_confirmation");

  if (password && confirm_password) {
    password.addEventListener('input', validate)
    confirm_password.addEventListener('input', validate)}
  })

function validate() {
  var password = document.getElementById("user_password").value;
  var confirm_password = document.getElementById("user_password_confirmation").value;
  if (confirm_password.length == 0) {
    this.classList.remove('bg-danger')
    this.classList.remove('bg-success')
    this.classList.add('bg-light')
    return;
  }

  if (password != confirm_password) {
    this.classList.remove('bg-success')
    this.classList.add('bg-danger')
  } else {
    this.classList.remove('bg-danger')
    this.classList.add('bg-success')
  }
}
