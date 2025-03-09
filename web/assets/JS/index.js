const sidebarItems = document.querySelectorAll(".sidebar__item");

sidebarItems.forEach(item => {
    item.addEventListener("click", function () {
        // Xóa class 'sidebar__item--active' khỏi tất cả các mục
        sidebarItems.forEach(i => i.classList.remove("sidebar__item--active"));

        // Thêm class 'sidebar__item--active' cho mục được click
        this.classList.add("sidebar__item--active");
    });
});


// Kiểm tra nếu có logoutSuccess trên URL thì hiển thị thông báo
const urlParams = new URLSearchParams(window.location.search);
if (urlParams.get('action') === 'logout') {
    alert("Bạn đã đăng xuất thành công!");
    // Xóa logoutSuccess khỏi URL để không hiển thị lại khi refresh trang
    window.history.replaceState({}, document.title, window.location.pathname);
}
