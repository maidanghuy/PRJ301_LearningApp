document.addEventListener("DOMContentLoaded", function () {
    const filterBtn = document.querySelector(".icon-btn");
    const categoryList = document.querySelector(".icon-catetory");

    filterBtn.addEventListener("click", function (event) {
        event.preventDefault(); // Ngăn chặn reload trang khi nhấn vào button
        categoryList.classList.toggle("show"); // Thêm hoặc xóa class "show"
    });
});

