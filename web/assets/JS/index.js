const navbarItems = document.querySelectorAll(".navbar-items");

navbarItems.forEach((item) => {
  item.addEventListener("click", () => {
    if (item.classList.contains("navbar_active")) return;

    navbarItems.forEach((nav) => nav.classList.remove("navbar_active"));

    item.classList.add("navbar_active");
  });
});
