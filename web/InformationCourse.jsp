<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Trang chu</title>
    <%@ include file="./includes/headInfo.jsp" %>
    <!-- styles.css: Chứa các quy tắc CSS chính của trang -->
    <link rel="stylesheet" href="./assets/CSS/course_details.css" />
    <!-- <link rel="stylesheet" href="./assets/CSS/index.css" /> -->
  </head>

  <body>
    <div class="container-custom">
      <div class="container-left">
        <%@ include file="./includes/navbar.jsp" %>
      </div>
      <div class="container-right">
        <div class="main-content">
          <%@ include file="./includes/header.jsp" %>
          <main class="main__content">
            <div class="course">
              <div class="course__banner">
                <img
                  src="https://s3-alpha-sig.figma.com/img/78dd/212c/1115df0d52a13e3a27cc8735ecd36e2c?Expires=1742169600&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Jl5qZxx~nfaFaIbbPfKGvxkL6ZxF9maOzp-IYbm6ml4eM3RuDyQJfqCE-70pLr57KL1hrt9X5jN3LzzYDXmeEZpB4rVpJz4UO5hQ500ckjIIhWbyKy8Y9gDTFrwPFvgyxqQU8wUqe78c4EJmfroYskwGSiFcUwVcUcBQlLGqUTLj26PYhVW0s3nv2lZi5JgCLTLLyTaYbTZuN9gANiprjjSO2SaM8Z3c5Qys4vqFEfbxTGjJHuCVWbRlIRCo6IHZoSkNKX43LPcUxlmXnDVLn8BMrKXuIbWMYCYI8BKjhFz52JaLv4aO9-Cl6I5x9CTXNjRGOQ6VzMswJ0cd4HgYOg__"
                  alt="IELTS_Beginer"
                  class="course_banner_img"
                />
                <div class="course__info">
                  <h1 class="course__title">IELTS Intermediate</h1>
                  <p class="course__description">
                    Xây dựng và phát triển vốn từ vựng cần thiết tương đương
                    trình độ B2
                  </p>
                </div>
              </div>
              <div class="course__tabs">
                <button class="btn course__tab course__tab--active">
                  Thông tin khóa học
                </button>
                <button class="btn course__tab">Lịch học</button>
                <button class="btn course__tab">Lộ trình học tập</button>
                <button class="btn course__tab">Cam kết sau khóa học</button>
              </div>
              <div class="course__details">
                <h2 class="course__title">
                  Xây dựng và phát triển vốn từ vựng cần thiết tương đương trình
                  độ B2
                </h2>
                <ul class="course__list">
                  <li class="course__description">
                    - Nắm vững và thực hành chiến thuật cho hầu hết dạng câu hỏi
                    từ đơn giản đến cao cấp của bộ môn Reading và Listening
                  </li>
                  <li class="course__description">
                    - Nắm vững cách tiếp cận hầu hết các dạng bài Writing từ đơn
                    giản đến cao cấp
                  </li>
                  <li class="course__description">
                    - Tăng cường thực hành rèn luyện khả năng tập trung và quản
                    lý thời gian và áp dụng chiến thuật thông qua các bài luyện
                    tập thi thật ở tất cả các bộ môn
                  </li>
                  <li class="course__description">
                    - Làm quen với việc tương tác mô hình IELTS Computer Test
                  </li>
                </ul>
                <div class="course__images">
                  <img
                    class="course__image"
                    src="student1.jpg"
                    alt="Học viên IELTS"
                  />
                  <img
                    class="course__image"
                    src="student2.jpg"
                    alt="Học viên IELTS"
                  />
                  <img
                    class="course__image"
                    src="student3.jpg"
                    alt="Học viên IELTS"
                  />
                </div>
                <p class="course__description">
                  Khóa học IELTS Beginner dành cho những học viên mới bắt đầu
                  học tiếng Anh và muốn cải thiện kỹ năng của mình để chuẩn bị
                  cho kỳ thi IELTS. Khóa học này giúp học viên xây dựng nền tảng
                  vững chắc về ngữ pháp, từ vựng, phát âm và kỹ năng giao tiếp
                  cơ bản, giúp học viên có thể diễn đạt ý tưởng rõ ràng và tự
                  tin hơn trong tiếng Anh.
                </p>
                <p class="course__description">
                  Khóa học IELTS Beginner sẽ giúp học viên tự tin bước vào các
                  khóa học IELTS Intermediate và nâng cao hơn. Học phí cho khóa
                  học là 4.500.000 VND / 2.5 tháng, bao gồm tài liệu học tập và
                  các bài sửa Writing chi tiết từ giảng viên có kinh nghiệm.
                </p>
                <p class="course__description">
                  Khóa học này đặc biệt phù hợp cho những học viên mong muốn bắt
                  đầu từ con số 0 và xây dựng nền tảng IELTS chắc chắn, để từ đó
                  dễ dàng phát triển các kỹ năng trong các khóa học nâng cao.
                </p>
              </div>
            </div>

            <div class="calendar hidden">
              <div class="calendar-header">
                <button id="prevMonth">&#9665;</button>
                <h2 id="monthYear"></h2>
                <button id="nextMonth">&#9655;</button>
              </div>
              <div class="weekdays">
                <div>Sun</div>
                <div>Mon</div>
                <div>Tue</div>
                <div>Wed</div>
                <div>Thu</div>
                <div>Fri</div>
                <div>Sat</div>
              </div>
              <div class="days" id="calendarDays"></div>
            </div>

            <div class="accordion hidden">
              <div class="accordion-item">
                <div class="accordion-header active">Vocabulary</div>
                <div class="accordion-content" style="display: block">
                  <p>Chủ đề hàng ngày</p>
                  <p>Các cụm động từ, cụm danh từ</p>
                  <p>Ghi nhớ từ vựng bằng Flashcash</p>
                  <p>Mở rộng vốn từ</p>
                </div>
              </div>
              <div class="accordion-item">
                <div class="accordion-header">Grammar</div>
                <div class="accordion-content" style="display: block">
                  <p>Cấu trúc câu cơ bản</p>
                  <p>Thì cơ bản trong tiếng Anh</p>
                  <p>Các thành phần ngữ pháp quan trọng</p>
                </div>
              </div>

              <div class="accordion-item">
                <div class="accordion-header">Reading</div>
                <div class="accordion-content" style="display: block">
                  <p>Làm quen với các dạng bài tập</p>
                  <p>Kỹ năng đọc lướt và đọc chi tiết</p>
                  <p>Tìm hiểu các lỗi sai hay mắc phải và cách khắc phục</p>
                </div>
              </div>
              <div class="accordion-item">
                <div class="accordion-header">Listening</div>
                <div class="accordion-content" style="display: block">
                  <p>Nghe từ và câu đơn giản</p>
                  <p>Nghe hội thoại thực tế</p>
                  <p>Làm quen một vài dạng đề cơ bản</p>
                </div>
              </div>
              <div class="accordion-item">
                <div class="accordion-header">Làm đề</div>
                <div class="accordion-content" style="display: block">
                  <p>Bộ đề Cambridge 9-16</p>
                  <p>Lời giải chi tiết và giải thích</p>
                </div>
              </div>
            </div>

            <div class="commit hidden">
              <p class="course__description">
                G-EASY cam kết bạn đạt tối thiểu 5.0 và nếu học tốt, bạn có thể
                đạt đến 6.5 sau khi hoàn thành khóa IELTS Intermediate. tất cả
                cam kết phía trên là:
              </p>
              <p class="course__description">
                Cho hầu hết 100% học viên. Trừ trường hợp không học bài, làm bài
                và vắng quá nhiều. Hoặc, học viên vắng các buổi quan trọng trong
                khóa.
              </p>
              <p class="course__description">
                Trong đúng thời gian cam kết (3 tháng). Nghĩa là, chúng tôi
                không để bạn không đủ điểm rồi phải học đi học lại nhiều lần.
                (Mặc dù nếu học nghiêm túc mà không đủ điểm, bạn vẫn được học
                lại miễn phí)
              </p>
              <p class="course__description">
                Cam kết tối thiểu, tức nếu bạn học tốt hơn sẽ có thể đạt điểm
                cao hơn. (Đã có học viên ngay khi hoàn thành IELTS Beginner, thi
                thật ở British Council và đạt 6.0. Dù ban đầu khi tìm đến G-EASY
                bạn chỉ mong 5.0 để đủ làm hồ sơ du học).
              </p>
            </div>
            <div class="course_footer_btn">
              <a href="#"
                ><button class="btn course__register-btn">
                  Khóa Học Khác
                </button></a
              >
              <a href="#"
                ><button class="btn course__register-btn">
                  Đăng ký ngay
                </button></a
              >
            </div>
          </main>
        </div>
        <footer class="footer">
          <%@ include file="./includes/footer.jsp" %>
        </footer>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./assets/JS/index.js"></script>
    <script src="assets/JS/course_details.js"></script>
  </body>
</html>
