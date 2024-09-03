<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Heart of Memories</title>
    <style>
        body {
            font-family: 'CuteFont', sans-serif;
            background-color: #FCE4EC; /* Pink pastel background */
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }

        .gallery-container {
            text-align: center;
            max-width: 600px;
            margin: auto;
        }

        .title-container {
            margin-bottom: 20px;
        }

        .gallery-title {
            font-size: 36px;
            padding: 10px 20px;
            background-color: #F8BBD0; /* Soft pink color */
            color: #F06292; /* Pink lettering */
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .heart-collage {
            display: grid;
            grid-template-columns: repeat(7, 1fr); /* 7 columns for block heart shape */
            gap: 5px; /* Smaller gap between images */
            justify-content: center;
            margin-bottom: 30px;
        }

        .image-item {
            position: relative;
            width: 60px; /* Smaller image size */
            height: 60px; /* Smaller image size */
            overflow: hidden;
            border-radius: 15px; /* Rounded corners */
            cursor: pointer;
            transition: transform 0.2s;
            display: flex;
            justify-content: center;
            align-items: center;
            border: 2px solid #FFCDD2;
        }

        .image-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 15px;
        }

        .image-item:hover {
            transform: scale(1.05);
        }

        .empty-space {
            visibility: hidden; /* Hides the empty spaces */
        }

        .popup-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        .full-image {
            max-width: 90%;
            max-height: 90%;
        }

        .back-link {
            margin-top: 30px;
            padding: 10px 20px;
            background-color: #f48fb1;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s;
        }

        .back-link:hover {
            background-color: #ec407a;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="gallery-container">
        <div class="title-container">
            <h1 class="gallery-title">Our Heart of Memories</h1>
        </div>

        <div class="heart-collage">
            <!-- Block Heart Shape Image Items -->
            <div class="image-item empty-space"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079494.jpg" alt="Memory 1"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079489.jpg" alt="Memory 2"></div>
            <div class="image-item empty-space"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079491.jpg" alt="Memory 3"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079584.jpg" alt="Memory 4"></div>
            <div class="image-item empty-space"></div>

            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079591.jpg" alt="Memory 5"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079603.jpg" alt="Memory 6"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079601.jpg" alt="Memory 7"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079609.jpg" alt="Memory 8"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079602.jpg" alt="Memory 9"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079600.jpg" alt="Memory 10"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079585.jpg" alt="Memory 11"></div>
           
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079587.jpg" alt="Memory 12"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079599.jpg" alt="Memory 13"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079610.jpg" alt="Memory 14"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079586.jpg" alt="Memory 15"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079608.jpg" alt="Memory 16"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079598.jpg" alt="Memory 17"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079472.jpg" alt="Memory 18"></div>

            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079465 (1).jpg" alt="Memory 19 "></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079597.jpg" alt="Memory 20"></div>
           <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079607.jpg" alt="Memory 21"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079596.jpg" alt="Memory 22"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6246590660413079594.jpg" alt="Memory 23"></div>
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->

            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6249155533277871961.jpg" alt="Memory 24"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6206014888892022202.jpg" alt="Memory 15"></div>
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6249155533277871962.jpg" alt="Memory 26"></div>
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->

            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item"><img src="C:\Users\FOR YOU\Downloads\6249155533277871960.jpg" alt="Memory 14"></div>
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
            <div class="image-item empty-space"></div> <!-- Empty space for heart shape -->
        </div>
    </div>

    <a href="context.html" class="back-link">Back to Home</a>

    <div class="popup-overlay" onclick="closePopup()">
        <img src="" alt="Full Image" class="full-image">
    </div>

    <script>
        // Handle image click to show full image in popup
        document.querySelectorAll('.image-item').forEach(item => {
            item.addEventListener('click', function() {
                const imgSrc = this.querySelector('img').src;
                document.querySelector('.popup-overlay img').src = imgSrc;
                document.querySelector('.popup-overlay').style.display = 'flex';
            });
        });

        // Close the popup
        function closePopup() {
            document.querySelector('.popup-overlay').style.display = 'none';
        }
    </script>
</body>
</html>
