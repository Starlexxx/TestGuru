document.addEventListener('turbolinks:load', function() {
  var progressBar = document.querySelector('.progress-bar')


  if ( progressBar) {
    var currentNumber = progressBar.dataset.currentNumber
    var count = progressBar.dataset.count

    progressBar.style.width = 100/count * (currentNumber - 1) + "%"

  }
})
