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

document.addEventListener("DOMContentLoaded", function () {
    const slides = document.querySelectorAll(".banner__slides");
    const prevBtn = document.querySelector(".banner__control--prev");
    const nextBtn = document.querySelector(".banner__control--next");
    let currentIndex = 0;
    let autoSlide;

    function showSlide(index) {
        slides.forEach((slide, i) => {
            slide.classList.remove("active");
        });
        slides[index].classList.add("active");
    }

    function nextSlide() {
        currentIndex = (currentIndex + 1) % slides.length;
        showSlide(currentIndex);
    }

    function prevSlide() {
        currentIndex = (currentIndex - 1 + slides.length) % slides.length;
        showSlide(currentIndex);
    }

    function startAutoSlide() {
        autoSlide = setInterval(nextSlide, 3000);
    }

    function resetAutoSlide() {
        clearInterval(autoSlide);
        startAutoSlide(); // Bắt đầu lại sau khi click
    }

    prevBtn.addEventListener("click", function () {
        prevSlide();
        resetAutoSlide();
    });

    nextBtn.addEventListener("click", function () {
        nextSlide();
        resetAutoSlide();
    });

    showSlide(currentIndex);
    startAutoSlide();
});
// Kiểm tra nếu có logoutSuccess trên URL thì hiển thị thông báo
const urlParams = new URLSearchParams(window.location.search);
if (urlParams.get('action') === 'logout') {
    alert("Bạn đã đăng xuất thành công!");
    // Xóa logoutSuccess khỏi URL để không hiển thị lại khi refresh trang
    window.history.replaceState({}, document.title, window.location.pathname);
}
