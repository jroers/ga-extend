##Home screen

###Main page
* As a user, I want to see a home screen showing two main components: 1) A left side vertical menu containing three category buttons (Skill Share, Projects and Networking) and a My Profile button and 2) A Bulletin Board containing Preview Cards. 

###Top menu bar
* As a user, I want to see four clickable buttons in this menu: three category buttons (Skill Share, Projects and Networking) and a My Profile button.
The Skill Share button is orange.
The Project button is green.
The Networking button is red.
The My Profile button is black.  
* When I click each button, an action should result. If button is clicked, the text gets bolded to signal that it’s selected.
* When I click the Skill Share button for the first time, I want to see only Skill Share preview cards in the Bulletin Board.  When I click it a second time, I want to see all preview cards in the Bulletin Board. 
* When I click the Projects button for the first time, I want to see only Projects preview cards in the Bulletin Board.  When I click it a second time, I want to see all preview cards in the Bulletin Board.
* When I click the Networking button for the first time, I want to see only Networking preview cards in the Bulletin Board.  When I click it a second time, I want to see all preview cards in the Bulletin Board.
* When I click the My Profile button, I want to see a pop-up window appear with my profile details, which I can freely edit.
* [Low priority] when I hover over each button, there is a popup that shows me additional information - Text description. 
Skill Share: “Find users with skills you want to learn, or skills you want to teach") appears in pop-out either when 
Projects: “Find users to collaborate on a project with"
Networking: “Find user-posted job listings"

###Bulletin Board
* As a user, when I am on the home screen, I want to see the Bulletin Board with all the preview cards displayed.  Each card has a border and corner tag that is color coded by its category (Orange: Skill Share, Green: Project, Red: Networking)
* When I click on a Preview Card, it expands on the screen and becomes the Detailed Card.

###Preview Card
* As a user, I want to see Preview Cards containing information posted by others through their Profiles. 
Each Preview Card contains these components from the person who created that card:
* Main title - Describes who the person is and what he/she is looking for (example: Dev Seeking Other Dev & Designer”
 * Photo
 * Name
 * Brief personal description (example: Full Stack Developer | R&B Singer)
 * Skills Desired (example: UX design, prototyping, etc.)

###Detailed Card
* As a user, when I click on any Preview Card I want it to pop up/expand and show me additional details.
* Each Detailed Card contains these components from the person who created that card:
 * Main title - Describes who the person is and what he/she is looking for (example: Dev Seeking Other Dev & Designer”
 * OP’s Photo
 * OP’s Name
 * OP’s Brief personal description/title (example: Full Stack Developer | R&B Singer)
 * Working on (example: “An API aggregator which allows devs to incorporate all of the services they use into a….”)
 * Skills Desired (example: UX design, prototyping, etc.)  These appear as non-clickable yellow boxes.
 * Message Me button.  This is a clickable button that automatically generates a blank e-mail message from me to the poster.
 * Cancel button.  This is a clickable button that closes the Detailed Card and returns me to the Bulletin Board view.

###My Profile
* As a user, I want to have a user profile that I can freely edit.
* My profile opens as a new url when I click the “My Profile” button on the top menu.
* User sees two sections in their profile page: My profile and My Cards
* My profile includes three information fields: GA Program, Cohort and Skills.  
 * The first field is titled “GA Program.”  I can select the GA program I completed from the following drop-down menu choices.  I can only make one selection from this list.
ADI
Back-End Web Development
Data Analytics
Data Science
Digital Marketing
DSI
Front-End Web Development
iOS Development
JavaScript Development
Product Management
PMI
User Experience Design
UXDI
Visual Design
WDI
 * The second field is “Cohort.” This field is optional.  If I completed an immersive program, I can select the number of that cohort from a drop-down menu listing numbers from 1 to 100.  I can only select one number from this list.
 * The third field is “Skills.”  I can populate this field from a drop-down menu containing a list of skills from this set list.  I can select as many skills as I want from this list, and all of my selections will appear in the field after I have finalized my selections.
 * Short personal description - Limit it to 60 characters.  (Modeling this after GA Profile)
* My Cards: On the left side of the profile, user can see all the cards that they have created and if they click on an individual card, they have an option to Edit or Delete.

###Login
* If I am a new user and I go to the Home Screen and click on anything, a pop-up window comes up and asks me to: Log in -or- Sign up.
* If I click sign up, there should be a form that comes up and requests my First Name, Last Name, email and password. Once they submit this, they are redirected to My profile (#6 above) to input all the other info and a submit button.
* If user click log-in, user inputs email and password and then they are brought back to home screen

###Create a New Card
* From My Profile, on the left side of the page, users can see all the cards they have created as well as a button to add a new card.
* When a user clicks on button to add a new card, user sees a form that requests the following information:
 * What kind of card is this?  Skill Share, Projects, Networking
 * Project title: i.e. Developer seeking Designer
 * Working on: i.e. an API aggregator which allows devs to incorporate all of the services they use into a….
 * Skills desired: i.e. UX design, prototyping, etc.


##FOR PMs TO DO
Content for 10-15 user profiles; 2-3 cards each

##DEV SCHEDULE

Day 1: Models - info for card, user > build basic templates

Day 2: Preview cards and get them linked

Day 3: Get things onto bulletin board

Day 4: Build shell of site

Day 5: Filtering, sorting, pop-up windows

Day 6 & 7: Malcolm - design

##Risk
Sorting part at end - Angular
Fallback - default alphabetical order; search bar
Is there a way to build something simple at first?  Probably not.  Have it render on page using Rails.

##MVP concept note

We (Miranda, Sebastian, Patty, Malcolm, Danny and Joe) agree to work collaboratively to create GA Extend, a user-driven online community for General Assembly program alumni.  GA Extend features an online bulletin board listing opportunities in the Skill Share, Projects and Networking categories designed to facilitate postgraduate connections.  We are targeting GA alumni currently on the job market and promoting productive engagement through user interaction on our site, as skill acquisition, continuing education and collaborative work will increase marketability for alumni seeking jobs in the industry.  

