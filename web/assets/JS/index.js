const sidebarItems = document.querySelectorAll(".sidebar__item");

sidebarItems.forEach((item) => {
  item.addEventListener("click", () => {
    if (item.classList.contains("sidebar__item--active")) return;

    // Loại bỏ class active khỏi tất cả các mục
    sidebarItems.forEach((nav) => nav.classList.remove("sidebar__item--active"));

    // Thêm class active vào mục được click
    item.classList.add("sidebar__item--active");
  });
});

document.getElementById('login-button').addEventListener("click", function () {
  const formLogin = document.getElementById("form__login");
  const overlay = document.getElementById("overlayForm");

  formLogin.classList.remove("hidden");
  overlay.classList.remove("hidden");

  function hideForm() {
    formLogin.classList.add("hidden");
    overlay.classList.add("hidden");
  }

  overlay.addEventListener("click", hideForm);
});

// JS for hidden append password buttons
const togglePassword = document.getElementById('toggle-password');
const passwordField = document.getElementById('password');
const passwordIcon = togglePassword.querySelector('i');

togglePassword.addEventListener('click', function () {
  // Toggle the type attribute
  const type = passwordField.getAttribute('type') === 'password' ? 'text' : 'password';
  passwordField.setAttribute('type', type);

  // Toggle the eye icon based on the password visibility
  passwordIcon.classList.toggle('fa-eye-slash');
  passwordIcon.classList.toggle('fa-eye');
});

passwordField.addEventListener("focus", () => {
  document.querySelector("#toggle-password i").style.color = "black"; // Màu khi focus
});

passwordField.addEventListener("blur", () => {
  document.querySelector("#toggle-password i").style.color = "#9E988F"; // Màu khi mất focus
});

// ----------------------------------------------------------------
// Js for login to register

let links = document.querySelectorAll(".auth__footer-link");
// console.log(links[0]);
links[0].addEventListener('click', () => {
  hiddenLoginForm();
  let btns = document.querySelectorAll(".auth__button");
  btns.forEach(item => {
    item.classList.toggle("append");
    item.classList.toggle("hidden");
  });
  links[0].parentNode.classList.add('hidden');
  links[1].parentNode.classList.remove('hidden');
});

links[1].addEventListener('click', () => {
  showLoginForm();
  let btns = document.querySelectorAll(".auth__button");
  btns.forEach(item => {
    item.classList.toggle("append");
    item.classList.toggle("hidden");
  });
  links[0].parentNode.classList.remove('hidden');
  links[1].parentNode.classList.add('hidden');
});

function hiddenLoginForm() {
  let formGroups = document.querySelectorAll(".auth__input-group");
  for (let i = 0; i <= 2; i++) {
    formGroups[i].classList.add("hidden");
  }

  for (let i = 3; i < formGroups.length; i++) {
    formGroups[i].classList.remove("hidden");
  }
}

function showLoginForm() {
  let formGroups = document.querySelectorAll(".auth__input-group");
  for (let i = 3; i < formGroups.length; i++) {
    formGroups[i].classList.add("hidden");
  }
  for (let i = 0; i <= 2; i++) {
    formGroups[i].classList.remove("hidden");
  }
}
