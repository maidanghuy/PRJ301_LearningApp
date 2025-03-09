// Khi click vào item, lưu trạng thái vào sessionStorage
document.querySelectorAll(".sidebar__item").forEach(item => {
    item.addEventListener("click", function () {
        sessionStorage.setItem("activeSidebar", this.href);
    });
});

// Khi tải lại trang, lấy trạng thái từ sessionStorage
window.addEventListener("load", function () {
    const savedSidebar = sessionStorage.getItem("activeSidebar");
    if (savedSidebar) {
        document.querySelectorAll(".sidebar__item").forEach(item => {
            if (item.href === savedSidebar) {
                item.classList.add("sidebar__item--active");
            } else {
                item.classList.remove("sidebar__item--active");
            }
        });
    }
});



// Kiểm tra nếu có logoutSuccess trên URL thì hiển thị thông báo
const urlParams = new URLSearchParams(window.location.search);
if (urlParams.get('action') === 'logout') {
    alert("Bạn đã đăng xuất thành công!");
    // Xóa logoutSuccess khỏi URL để không hiển thị lại khi refresh trang
    window.history.replaceState({}, document.title, window.location.pathname);
}
