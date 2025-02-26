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
