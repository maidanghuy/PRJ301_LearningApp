// Thời gian đếm ngược (ví dụ: 10 phút)
var countdownTime = 10 * 60;
var countdownElement = document.getElementById("countdown");

function updateCountdown() {
  var minutes = Math.floor(countdownTime / 60);
  var seconds = countdownTime % 60;
  countdownElement.textContent = minutes + " min " + seconds + " s";
  if (countdownTime > 0) {
    countdownTime--;
  } else {
    clearInterval(countdownInterval);
    alert("Hết thời gian!");
  }
}

var countdownInterval = setInterval(updateCountdown, 1000);

document.addEventListener("DOMContentLoaded", function () {
  const questionLinks = document.querySelectorAll(".question-link");
  const radioInputs = document.querySelectorAll('input[type="radio"]');

  // Xử lý khi click vào số câu hỏi
  questionLinks.forEach((link) => {
    link.addEventListener("click", function (e) {
      questionLinks.forEach((l) => l.classList.remove("active"));
      this.classList.add("active");
    });
  });

  // Xử lý khi chọn câu trả lời
  radioInputs.forEach((input) => {
    input.addEventListener("change", function () {
      const questionNumber = this.name.replace("question", "");
      const correspondingLink = document.querySelector(
        `.question-link[href="#question${questionNumber}"]`
      );
      if (correspondingLink) {
        correspondingLink.classList.add("answered");
        updateAnsweredQuestions();
      }
    });
  });

  // Hàm cập nhật trạng thái cho tất cả các câu đã chọn
  function updateAnsweredQuestions() {
    // Xóa class answered của tất cả các câu
    questionLinks.forEach((link) => {
      link.classList.remove("answered");
    });

    // Thêm class answered cho các câu đã chọn
    radioInputs.forEach((input) => {
      if (input.checked) {
        const questionNumber = input.name.replace("question", "");
        const correspondingLink = document.querySelector(
          `.question-link[href="#question${questionNumber}"]`
        );
        if (correspondingLink) {
          correspondingLink.classList.add("answered");
        }
      }
    });
  }

  // Kiểm tra trạng thái đã chọn của các câu hỏi khi trang load
  updateAnsweredQuestions();

  // Thêm xử lý scroll để cập nhật active state
  window.addEventListener("scroll", function () {
    const questionItems = document.querySelectorAll(".question-item");
    questionItems.forEach((item) => {
      const rect = item.getBoundingClientRect();
      if (rect.top <= 100 && rect.bottom >= 100) {
        const questionNumber = item.id.replace("question", "");
        questionLinks.forEach((link) => {
          if (link.getAttribute("href") === `#question${questionNumber}`) {
            link.classList.add("active");
          } else {
            link.classList.remove("active");
          }
        });
      }
    });
  });
});
