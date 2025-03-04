const sidebarItems = document.querySelectorAll(".sidebar__item");

sidebarItems.forEach(item => {
  item.addEventListener("click", function () {
    // Xóa class 'sidebar__item--active' khỏi tất cả các mục
    sidebarItems.forEach(i => i.classList.remove("sidebar__item--active"));

    // Thêm class 'sidebar__item--active' cho mục được click
    this.classList.add("sidebar__item--active");
  });
});
