<!DOCTYPE html>
<html>
<head>
    <title>Popup Right Panel</title>
    <style>
        /* Define the initial state of the popup */
        .popup {
            display: none; /* Initially hide the popup */
            position: fixed;
            top: 0;
            right: 0;
            width: 30%;
            height: 100%;
            background-color: #f2f2f2;
            z-index: 1;
            overflow-x: hidden;
            transition: 0.5s;
            padding: 20px;
        }
        /* Style for the close button */
        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <button onclick="openRightPanel()">Open Right Panel</button>

    <!-- The popup panel -->
    <div class="popup" id="popupPanel">
        <!-- Content for the popup goes here -->
        <span class="close" onclick="closeRightPanel()">&times;</span>
        <h2>Right Panel</h2>
        <p>This is the content of the right panel.</p>
    </div>

    <script>
        function openRightPanel() {
            var popupPanel = document.getElementById('popupPanel');
            popupPanel.style.display = 'block';
        }

        function closeRightPanel() {
            var popupPanel = document.getElementById('popupPanel');
            popupPanel.style.display = 'none';
        }
    </script>
</body>
</html>
