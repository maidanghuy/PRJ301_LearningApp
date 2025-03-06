document.addEventListener("DOMContentLoaded", function () {
    const lessons = document.querySelectorAll(".lesson");
    const lessonContents = document.querySelectorAll(".lesson-content");

    lessons.forEach((lesson) => {
        lesson.addEventListener("click", function () {
            // Xóa lớp active của tất cả bài học
            lessons.forEach((l) => {
                l.classList.remove("lesson--active");

                // Reset icon của tất cả bài học về "play"
                const icon = l.querySelector(".lesson__icon i");
                if (icon) {
                    icon.classList.remove("fa-pause-circle");
                    icon.classList.add("fa-play-circle");
                }
            });

            // Thêm lớp active cho bài học được chọn
            lesson.classList.add("lesson--active");

            // Đổi icon của bài học được chọn thành "pause"
            const selectedIcon = lesson.querySelector(".lesson__icon i");
            if (selectedIcon) {
                selectedIcon.classList.remove("fa-play-circle");
                selectedIcon.classList.add("fa-pause-circle");
            }

            // Lấy id của bài học được chọn
            const lessonId = lesson.getAttribute("data-id");

            // Dừng tất cả video trước khi chuyển bài học
            lessonContents.forEach((content) => {
                const iframe = content.querySelector("iframe");
                if (iframe) {
                    iframe.src = iframe.src; // Reset src để dừng video
                }
                content.classList.remove("lesson-content--active");
            });

            // Hiện nội dung bài học được chọn
            document.querySelector(`.lesson-content[data-id='${lessonId}']`).classList.add("lesson-content--active");
        });
    });
});


//--------------------------------------Cập nhật tiến trình--------------------------------
// 1. Load YouTube API
// Load YouTube API

// Load YouTube API
let tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
let firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// Biến lưu trữ player và intervals
let players = {};
let progressIntervals = {};

// Hàm gọi khi YouTube API sẵn sàng
function onYouTubeIframeAPIReady() {
    document.querySelectorAll(".lesson-content iframe").forEach(iframe => {
        let videoId = iframe.src.split("/embed/")[1].split("?")[0]; // Lấy video ID
        let lessonId = iframe.closest(".lesson-content").getAttribute("data-id"); // Lấy ID bài học

        players[lessonId] = new YT.Player(iframe, {
            events: {
                'onStateChange': (event) => trackProgress(event, lessonId),
                'onReady': () => updateProgress(lessonId) // Cập nhật ngay khi video sẵn sàng
            }
        });
    });
}

// Hàm theo dõi trạng thái video
function trackProgress(event, lessonId) {
    let player = players[lessonId];

    if (event.data === YT.PlayerState.PLAYING) {
        // Xóa interval cũ nếu có
        if (progressIntervals[lessonId]) clearInterval(progressIntervals[lessonId]);

        // Tạo interval cập nhật tiến trình mỗi giây
        progressIntervals[lessonId] = setInterval(() => updateProgress(lessonId), 1000);
    } else if (event.data === YT.PlayerState.ENDED) {
        // Nếu video kết thúc, đặt tiến trình 100%
        updateProgress(lessonId, true);
        clearInterval(progressIntervals[lessonId]);
    } else {
        // Khi video dừng hoặc tạm dừng, không cập nhật nữa
        if (progressIntervals[lessonId]) clearInterval(progressIntervals[lessonId]);
    }
}

// Hàm cập nhật tiến trình
function updateProgress(lessonId, isEnded = false) {
    let player = players[lessonId];

    if (player && player.getCurrentTime && player.getDuration) {
        let currentTime = player.getCurrentTime();
        let duration = player.getDuration();

        if (!isNaN(currentTime) && !isNaN(duration) && duration > 0) {
            let progressPercent = isEnded ? 100 : Math.round((currentTime / duration) * 100);
            let progressElement = document.querySelector(`.lesson[data-id='${lessonId}'] .lesson__progress`);

            if (progressElement) {
                progressElement.textContent = `${progressPercent}%`;
            }
        }
    }
}
