<%@page contentType="text/html" pageEncoding="UTF-8" %> 
<%@ include file="./includes/common.jsp" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Listening Test</title>
        <%@ include file="./includes/headInfo.jsp" %>
        <link rel="stylesheet" href="${css}/index.css" />
        <link rel="stylesheet" href="${css}/starttesting.css" />
        <style>
            .testing {
                display: flex;
                gap: 30px;
                padding: 30px;
                background: #f8f9fa;
                border-radius: 12px;
                margin: 20px;
            }
            .left-section {
                width: 50%;
                background: white;
                padding: 25px;
                border-radius: 12px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
            }
            .right-section {
                width: 50%;
                background: white;
                padding: 25px;
                border-radius: 12px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
            }
            .audio-section {
                margin-bottom: 25px;
            }
            .audio-player {
                width: 100%;
                margin-bottom: 20px;
                background: #f8f9fa;
                padding: 15px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            }
            .audio-player audio {
                width: 100%;
                height: 40px;
            }
            .image-container {
                width: 100%;
                max-height: 350px;
                overflow: hidden;
                border-radius: 12px;
                display: flex;
                justify-content: center;
                align-items: center;
                background: #f8f9fa;
                padding: 15px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            }
            .image-container img {
                max-width: 100%;
                max-height: 350px;
                object-fit: contain;
                border-radius: 8px;
            }
            .question-item {
                display: none;
                animation: fadeIn 0.3s ease;
            }
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(10px); }
                to { opacity: 1; transform: translateY(0); }
            }
            .question-item.active {
                display: block;
            }
            .question-text {
                font-size: 18px;
                margin-bottom: 25px;
                color: #2c3e50;
                line-height: 1.6;
                font-weight: 500;
                padding-left: 20px;
            }
            .answer-options {
                list-style: none;
                padding: 0;
                margin: 0;
            }
            .answer-option {
                margin-bottom: 15px;
                padding: 15px;
                background: #f8f9fa;
                border: 2px solid #e9ecef;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.2s ease;
                display: flex;
                align-items: center;
                gap: 10px;
            }
            .answer-option:hover {
                background: #e9ecef;
                border-color: #3498db;
                transform: translateX(5px);
            }
            .answer-option input[type="radio"] {
                width: 18px;
                height: 18px;
                margin: 0;
            }
            .answer-option span {
                padding-left: 10px;
            }
            .question-nav {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
                background: white;
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            .nav-left {
                display: flex;
                align-items: center;
            }
            .nav-right {
                display: flex;
                align-items: center;
            }
            .question-list {
                display: flex;
                gap: 10px;
                flex-wrap: wrap;
            }
            .question-number {
                width: 35px;
                height: 35px;
                display: flex;
                align-items: center;
                justify-content: center;
                background: #f8f9fa;
                border: 2px solid #e9ecef;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.2s ease;
                font-weight: 500;
                font-size: 16px;
            }
            .question-number:hover {
                background: #e9ecef;
                border-color: #3498db;
                transform: translateY(-2px);
            }
            .question-number.active {
                background: #3498db;
                color: white;
                border-color: #3498db;
                transform: translateY(-2px);
            }
            .question-number.answered {
                background: #2ecc71;
                color: white;
                border-color: #2ecc71;
            }
            .countdown-timer {
                font-size: 28px;
                font-weight: bold;
                color: #2c3e50;
                background: #f8f9fa;
                padding: 10px 20px;
                border-radius: 8px;
                border: 2px solid #e9ecef;
            }
            .button-group {
                display: flex;
                gap: 15px;
                justify-content: flex-end;
                margin-top: 30px;
            }
            .btn-next, .btn-back, .btn-submit {
                padding: 12px 25px;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: all 0.3s ease;
                font-weight: 500;
                font-size: 16px;
                display: flex;
                align-items: center;
                gap: 8px;
            }
            .btn-next {
                background: #3498db;
                color: white;
            }
            .btn-next:hover {
                background: #2980b9;
                transform: translateY(-2px);
            }
            .btn-back {
                background: #95a5a6;
                color: white;
            }
            .btn-back:hover {
                background: #7f8c8d;
                transform: translateY(-2px);
            }
            .btn-submit {
                background: #2ecc71;
                color: white;
                padding: 15px 30px;
                font-size: 18px;
            }
            .btn-submit:hover {
                background: #27ae60;
                transform: translateY(-2px);
            }
            #submit-container {
                text-align: center;
                margin-top: 30px;
                padding: 20px;
                background: #f8f9fa;
                border-radius: 12px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
            }
        </style>
    </head>
    <body>
        <div class="container-custom">
            <div class="container-left">
                <%@ include file="./includes/navbar.jsp" %>
            </div>
            <div class="container-right">
                <div class="main-content">
                    <%@ include file="./includes/header.jsp" %>
                    <div class="question-nav">
                        <div class="nav-left">
                            <div id="countdown" class="countdown-timer"></div>
                        </div>
                        <script>
                                                                var countdownTime = ${timeTest} * 60;
                        </script>    
                    </div>
                    <div class="testing"> 

                        <div class="left-section">
                            <div class="audio-section">
                                <div class="audio-player">
                                    <audio id="audio-player" controls preload="auto">
                                        <source id="audio-source" src="${pageContext.request.contextPath}/" type="audio/mp3">
                                        Your browser does not support the audio element.
                                    </audio>
                                </div>
                                <div class="image-container" id="image-container" style="display: none;">
                                    <img id="question-image" src="${pageContext.request.contextPath}/" alt="Question Image">
                                </div>
                            </div>
                        </div>

                        <div class="right-section">
                            <c:forEach var="question" items="${listTest}" varStatus="status">
                                <div class="question-item ${status.index == 0 ? 'active' : ''}" 
                                     id="question${status.index + 1}" 
                                     data-img="${question.img}" 
                                     data-audio="${question.audio}" 
                                     data-part="${question.part}">

                                    <div class="question-text">
                                        <c:if test="${question.part != null && question.paragraph != null}">
                                            <div class="paragraph-text">
                                                Part ${question.part}: ${question.paragraph}
                                            </div>
                                        </c:if>
                                        Question ${status.index + 1}: ${question.question}
                                    </div>

                                    <input type="hidden" name="questionNumber" value="${status.index + 1}">
                                    <ul class="answer-options">
                                        <c:if test="${not empty question.option1}">
                                            <li class="answer-option">
                                                <input type="radio" name="question${status.index + 1}" value="${question.option1}" required />
                                                <span>${question.option1}</span>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty question.option2}">
                                            <li class="answer-option">
                                                <input type="radio" name="question${status.index + 1}" value="${question.option2}" required />
                                                <span>${question.option2}</span>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty question.option3}">
                                            <li class="answer-option">
                                                <input type="radio" name="question${status.index + 1}" value="${question.option3}" required />
                                                <span>${question.option3}</span>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty question.option4}">
                                            <li class="answer-option">
                                                <input type="radio" name="question${status.index + 1}" value="${question.option4}" required />
                                                <span>${question.option4}</span>
                                            </li>
                                        </c:if>
                                    </ul>
                                    <div class="button-group">
                                        <c:if test="${status.index > 0}">
                                            <button type="button" class="btn-back">Back</button>
                                        </c:if>
                                        <button type="button" class="btn-next">
                                            <c:choose>
                                                <c:when test="${status.index == listTest.size() - 1}">
                                                    Submit
                                                </c:when>
                                                <c:otherwise>
                                                    Next
                                                </c:otherwise>
                                            </c:choose>
                                        </button>
                                    </div>

                                </div>
                            </c:forEach>
                            <div id="submit-container" style="display: none; text-align: center; margin-top: 20px;">
                                <button type="button" class="btn-submit" onclick="submitAnswers()">Submit All Answers</button>
                                <script >
                                    const urlPath = "${url}";
                                </script>
                            </div>
                        </div>
                    </div>
                    <footer><%@ include file="./includes/footer.jsp" %></footer>
                </div>
            </div>
            <%@ include file="./includes/chatbot.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            <%@ include file="./includes/javascriptInfo.jsp" %>
            <script src="${js}/starttesting.js"></script>
            <script>
                                    document.addEventListener('DOMContentLoaded', function () {
                                        const contextPath = "${pageContext.request.contextPath}";
                                        const questions = document.querySelectorAll('.question-item');
                                        const imageContainer = document.getElementById('image-container');
                                        const imgElement = document.getElementById('question-image');
                                        const audioElement = document.getElementById('audio-player');
                                        const audioSource = document.getElementById('audio-source');
                                        const nextButtons = document.querySelectorAll('.btn-next');
                                        const backButtons = document.querySelectorAll('.btn-back');
                                        const submitContainer = document.getElementById('submit-container');
                                        let currentPart = null;
                                        let currentQuestion = 0;
                                        const questionNumbers = document.querySelectorAll('.question-number');

                                        // Ẩn tất cả câu hỏi trừ câu đầu tiên
                                        questions.forEach((question, index) => {
                                            if (index !== 0) {
                                                question.style.display = 'none';
                                            }
                                        });

                                        // Cập nhật media cho câu hỏi đầu tiên
                                        updateMedia(currentQuestion);

                                        // Cập nhật trạng thái câu hỏi khi chuyển câu
                                        function updateQuestionStatus() {
                                            questionNumbers.forEach((number, index) => {
                                                number.classList.remove('active');
                                                if (index === currentQuestion) {
                                                    number.classList.add('active');
                                                }
                                            });
                                        }

                                        // Xử lý click vào số câu hỏi
                                        questionNumbers.forEach((number, index) => {
                                            number.addEventListener('click', function() {
                                                if (index === currentQuestion) return;
                                                
                                                // Ẩn câu hỏi hiện tại
                                                questions[currentQuestion].style.display = 'none';
                                                
                                                // Hiển thị câu hỏi được chọn
                                                currentQuestion = index;
                                                questions[currentQuestion].style.display = 'block';
                                                
                                                // Cập nhật media cho câu hỏi mới
                                                updateMedia(currentQuestion);
                                                
                                                // Cập nhật trạng thái câu hỏi
                                                updateQuestionStatus();
                                                
                                                // Ẩn nút Submit nếu không phải câu cuối
                                                if (currentQuestion < questions.length - 1) {
                                                    submitContainer.style.display = 'none';
                                                } else {
                                                    submitContainer.style.display = 'block';
                                                }
                                            });
                                        });

                                        // Cập nhật xử lý nút Back
                                        backButtons.forEach((button, index) => {
                                            button.addEventListener('click', function(e) {
                                                e.preventDefault();
                                                
                                                // Ẩn câu hỏi hiện tại
                                                questions[currentQuestion].style.display = 'none';
                                                
                                                // Hiển thị câu hỏi trước đó
                                                currentQuestion--;
                                                questions[currentQuestion].style.display = 'block';
                                                
                                                // Cập nhật media cho câu hỏi mới
                                                updateMedia(currentQuestion);
                                                
                                                // Cập nhật trạng thái câu hỏi
                                                updateQuestionStatus();
                                                
                                                // Ẩn nút Submit
                                                submitContainer.style.display = 'none';
                                            });
                                        });

                                        // Cập nhật xử lý nút Next
                                        nextButtons.forEach((button, index) => {
                                            button.addEventListener('click', function(e) {
                                                e.preventDefault();
                                                
                                                // Ẩn câu hỏi hiện tại
                                                questions[currentQuestion].style.display = 'none';
                                                
                                                // Hiển thị câu hỏi tiếp theo
                                                currentQuestion++;
                                                if (currentQuestion < questions.length) {
                                                    questions[currentQuestion].style.display = 'block';
                                                    
                                                    // Cập nhật media cho câu hỏi mới
                                                    updateMedia(currentQuestion);
                                                    
                                                    // Cập nhật trạng thái câu hỏi
                                                    updateQuestionStatus();

                                                    // Ẩn nút Submit nếu chưa phải câu hỏi cuối
                                                    submitContainer.style.display = 'none';
                                                } else {
                                                    // Nếu là câu hỏi cuối cùng, hiển thị nút Submit
                                                    submitContainer.style.display = 'block';
                                                }
                                            });
                                        });

                                        // Hàm cập nhật media (hình ảnh và audio)
                                        function updateMedia(questionIndex) {
                                            if (questionIndex >= questions.length) return;

                                            const question = questions[questionIndex];
                                            const questionImg = question.getAttribute('data-img');
                                            const questionAudio = question.getAttribute('data-audio');
                                            const questionPart = question.getAttribute('data-part');
                                            const audioPlayer = document.querySelector('.audio-player');

                                            // Cập nhật hình ảnh
                                            if (questionImg && questionImg !== 'null') {
                                                const imagePath = questionImg.startsWith("/") ? contextPath + questionImg : contextPath + "/" + questionImg;
                                                imgElement.src = imagePath;
                                                imageContainer.style.display = 'flex';
                                            } else {
                                                imageContainer.style.display = 'none';
                                            }

                                            // Cập nhật audio
                                            if (questionAudio && questionAudio !== 'null') {
                                                const audioPath = questionAudio.startsWith("/") ? contextPath + questionAudio : contextPath + "/" + questionAudio;
                                                // Chỉ cập nhật source và load nếu audio khác với audio đang phát
                                                if (audioSource.src !== audioPath) {
                                                    audioSource.src = audioPath;
                                                    audioElement.load();
                                                }
                                                // Hiển thị audio player và tiếp tục phát từ vị trí hiện tại
                                                audioPlayer.style.display = 'block';
                                                audioElement.play();
                                            }
                                        }
                                    });
            </script>
        </div>
    </body>
</html>
