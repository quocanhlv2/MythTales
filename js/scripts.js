const mainMenu = document.querySelector('.mainMenu');
const closeMenu = document.querySelector('.closeMenu');
const openMenu = document.querySelector('.openMenu');

openMenu.addEventListener('click',show);
closeMenu.addEventListener('click',close);
mainMenu.addEventListener("click", close); 

function show(){
    mainMenu.style.display = 'flex';
    mainMenu.style.top = '0';
}
function close(){
    mainMenu.style.top = '-100vh';
}

const sr = ScrollReveal({
    origin: 'top',
    distance: '80px',
    duration: 2000,
    reset: true
})

sr.reveal('#menu', {delay:20})

sr.reveal('.logoMT', {delay:70})

sr.reveal('.NavArrow', {delay: 100})

sr.reveal('.MythTales', {delay: 100})

sr.reveal('.text', {delay: 100})

sr.reveal('.img', {delay: 100})

sr.reveal('.container2', {delay: 100})

sr.reveal('.playbt', {delay: 100})

function validateForm() {
    var name =  document.getElementById('name').value;
  if (name == "") {
      document.querySelector('.status').innerHTML = "Se requiere de un nombre";
      return false;
  }
  var email =  document.getElementById('email').value;
  if (email == "") {
      document.querySelector('.status').innerHTML = "Se requiere de un correo electrónico";
      return false;
  } else {
      var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      if(!re.test(email)){
          document.querySelector('.status').innerHTML = "Correo electrónico invalidó";
          return false;
      }
  }
  var subject =  document.getElementById('subject').value;
  if (subject == "") {
      document.querySelector('.status').innerHTML = "Se requiere introducir el asunto";
      return false;
  }
  var message =  document.getElementById('message').value;
  if (message == "") {
      document.querySelector('.status').innerHTML = "Se requiere introducir un mensaje";
      return false;
  }
  document.querySelector('.status').innerHTML = "Enviando...";
}



