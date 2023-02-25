var button = document.querySelector('.toggle-button');
var content = document.querySelector('.content');

button.addEventListener('click', function() {
  content.classList.toggle('open');
});