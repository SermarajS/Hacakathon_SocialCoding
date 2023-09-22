<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}
</style>
</head>
<body>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Module1')" id="defaultOpen">Module 1</button>
  <button class="tablinks" onclick="openCity(event, 'Module2')">Module 2</button>
  <button class="tablinks" onclick="openCity(event, 'Module3')">Module 3</button>
  <button class="tablinks" onclick="openCity(event, 'Module4')">Module 4</button>
  <button class="tablinks" onclick="openCity(event, 'Module5')">Module 5</button>
  <button class="tablinks" onclick="openCity(event, 'Module6')">Module 6</button>
  <button class="tablinks" onclick="openCity(event, 'Module7')">Module 7</button>
</div>

<div id="Module1" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Digital Literacy</h3>
  <p>Digital literacy is an individual's ability to find, evaluate, and communicate information by utilizing typing or digital media platforms. It is a combination of both technical and cognitive abilities in using information and communication technologies to create, evaluate, and share informations.</p>
</div>

<div id="Module2" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Game Design</h3>
  <p>Game design is the process of creating and shaping the mechanics, systems, and rules of a game. Games can be created for entertainment, education, exercise, or experimental purposes.</p> 
</div>

<div id="Module3" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Web Design</h3>
  <p>Web design encompasses many different skills and disciplines in the production and maintenance of web-sites.</p>
</div>
<div id="Module4" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lego Robotics</h3>
  <p>Lego Robotics</p> 
</div>

<div id="Module5" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Introduction to 4IR</h3>
  <p>Introduction to 4IR.</p>
</div><div id="Module6" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>AI and Machine Learning</h3>
  <p>AI and Machine Learning.</p> 
</div>

<div id="Module7" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Ready to Work</h3>
  <p>Ready to Work.</p>
</div>
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
</html> 