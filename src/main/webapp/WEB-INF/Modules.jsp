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
<div style="text-align:center;font-size:450%;background-color: #99c2ff;">Social Coding SA Modules</div>
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
  <p>What is Digital Literacy:
Definition and Uses in Daily Life Digital literacy encompasses the skills required to use technology safely,
effectively and responsibly. As technology continues to become more and
more ingrained in daily life, the importance of learning digital literacy skills
is becoming increasingly apparent.What is Digital Literacy:Definition
Digital literacy means having the skills to effectively use technology, and
the knowledge and skills to do so safely and responsibly. Digital refers to
technology, ranging from computers and the internet to technological
objects and programs such as cellphones, smart home systems, check in
kiosks at airports and more. Literacy refers to the ability to use this
technology and to use it well.The phrase digital literacy is an ambiguous one, but that's kind of the
point. Once predicated on the existing literacies of the time, (e.g.
information literacy and computer literacy, as referenced in Digital
Literacy by Paul Gilster), the modern definition has grown significantly in
line with the advancement and evolution of existing technologies. Now,
instead of outlining which technologies, exactly, are included in digital
literacy,the phrase more commonly refers to literacy that broadly
encompasses technology. This helps to prevent the need to redefine the
digital aspect of the phrase.
Uses of Digital Literacy in Everyday Life 
As technology becomes increasingly prominent in our daily lives, it's more
important than ever that digital literacy be included as a fundamental life
skill taught in education. Not only should students be able to use
computers effectively, but their digital literacy skills should span far beyond
the computer.</p>
<input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>

<div id="Module2" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Game Design</h3>
  <p>Game design is the process of creating and shaping the mechanics, systems, and rules of
a game. Games can be created for entertainment, education, exercise, or experimental
purposes. Increasingly, elements and principles of game design are also applied to other
interactions, in the form of gamification. Game designer and developer Robert Zubek defines
game design by breaking it down into its elements, which he says are the following:
Gameplay, which is the interaction between the player and the mechanics and
systems
Mechanics and systems, which are the rules and objects in the game
Player experience, which is how users feel when they are playing the game</p> 
<input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>

<div id="Module3" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Web Design</h3>
  <p>Web design is the process of planning, conceptualizing, and arranging content
online. Today, designing a website goes beyond aesthetics to include the
website’s overall functionality. Web design also includes web apps, mobile
apps, and user interface (UI) design, and user experience (UX).</p>
<input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>
<div id="Module4" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Lego Robotics</h3>
  <p>Lego robotics is a platform centered around building robots and
other vehicles and programming them to move and perform other
functions. Have you ever wondered what is robotics for kids? Well,
Robotics for kids is an engaging educational field that introduces
young learners to the exciting world of technology, engineering, and
programming through interactive and hands-on experiences with
robots. and with the help of Lego Robotics, one can learn it more
efficiently.

The involvement of young children in technology has become
important in today’s society. Every day, more and more kids are
transitioning into tech. Even schools have added STEM activities to
their curriculum to ensure that their kids do not miss out on the
numerous benefits of having a STEM skill.
Coding for kids is easy, fun, and accessible. There are many ways in
which parents can introduce their kids to coding. Some of which
include coding programs, resources, coding boot camps, coding
books, apps, games, and many more! The idea behind these is to
ensure all kids have equal opportunities to get involved in STEM.</p> 
  <input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>

<div id="Module5" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Introduction to 4IR</h3>
  <p>Industry 4.0 also called the Fourth Industrial
Revolution or 4IR is the next phase in the
digitization of the manufacturing sector, driven by
disruptive trends including the rise of data and
connectivity, analytics, human-machine interaction,
and improvements in robotics.</p>
  <input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>
<div id="Module6" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>AI and Machine Learning</h3>
  <p>AI automates repetitive learning and discovery through data. Instead of
automating manual tasks, AI performs frequent, high-volume, computerized tasks.
And it does so reliably and without fatigue. Of course, humans are still essential to
set up the system and ask the right questions.

AI adds intelligence to existing products. Many products you already use will be
improved with AI capabilities, much like Siri was added as a feature to a new
generation of Apple products. Automation, conversational platforms, bots and smart
machines can be combined with large amounts of data to improve many
technologies. Upgrades at home and in the workplace, range from security
intelligence and smart cams to investment analysis.

AI adapts through progressive learning algorithms to let the data do the
programming. AI finds structure and regularities in data so that algorithms can
acquire skills. Just as an algorithm can teach itself to play chess, it can teach itself
what product to recommend next online. And the models adapt when given new
data. 

AI analyzes more and deeper data using neural networks that have many hidden
layers. Building a fraud detection system with five hidden layers used to be
impossible. All that has changed with incredible computer power and big data. You
need lots of data to train deep learning models because they learn directly from the
data. 

AI achieves incredible accuracy through deep neural networks. For example, your
interactions with Alexa and Google are all based on deep learning. And these
products keep getting more accurate the more you use them. In the medical field, AI
techniques from deep learning and object recognition can now be used to pinpoint
cancer on medical images with improved accuracy.

AI gets the most out of data. When algorithms are self-learning, the data itself is an
asset. The answers are in the data. You just have to apply AI to find them. Since the
role of the data is now more important than ever, it can create a competitive
advantage. If you have the best data in a competitive industry, even if everyone is
applying similar techniques, the best data will win.</p> 
  <input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload">
</div>

<div id="Module7" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Ready to Work</h3>
  <p>Ready to Work.</p>
  <input type="file" id="myFile" name="filename">
  <input type="submit" value= "Upload"> 
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
</html> ss