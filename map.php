<!DOCTYPE html>
<html>
<head>
    <style>
        .mapouter {
            position: relative;
            text-align: right;
            height: 400px;
            width: 600px;
        }

        .gmap_canvas {
            overflow: hidden;
            background: none !important;
            height: 400px;
            width: 600px;
        }

        .gmap_iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }
    </style>
</head>
<body>
    <div class="mapouter">
        <div class="gmap_canvas">
            <iframe
                class="gmap_iframe"
                frameborder="0"
                scrolling="no"
                marginheight="0"
                marginwidth="0"
                id="google-map"
            ></iframe>
            <a href="https://connectionsgame.org/">Connections NYT</a>
        </div>
    </div>

    <script>
        // JavaScript code to set the location dynamically
        document.addEventListener("DOMContentLoaded", function () {
            var input = 'Schools In Bogura';
            var iframe = document.getElementById('google-map');
            iframe.src = 'https://maps.google.com/maps?width=600&height=400&hl=en&q=' + encodeURIComponent(input) + '&t=&z=14&ie=UTF8&iwloc=B&output=embed';
        });
    </script>
</body>
</html>
