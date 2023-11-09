# Movie-Recommender-ios

Introduction:
Movies App is an application that allows users to search for movies on the internet, and view the reviews from IMDB, and can be added to watchlist. This application enables browsing movies and series 
according to the genre, such as action, comedy, crime and more. It serves as comprehensive platform for movie enthusiasts providing detailed insights into a vast array of films and series. Additionally, 
it offers a personalized experience by allowing users to curate their own watchlist based on their preferences. 
Key Features: 
Main key features are finding top IMDB 50 ranking movies or series according to the user’s liked genre. And another feature is searching the movie name in database and watching the movie trailer in 
IMDB site and after finding a correct movie or series they can be added to watchlist by pressing + button. 

Sign-in page and sign-up page. 
     
Both sign-in and sign- up page check and alert if the string is passing empty or not. And in sign in it will check the password typed twice matches or not
        
After successfully sign-up user can sign in and here also alert for right email password. 
 
After successfully login user will be at home page where there will be 
Some collections of genre, segmented control, profile, and search icons.
                                  
 User can search movie name using API search where user enter movie name and returns. And here we have + button to add movies to watchlist. 
         
User can search movies and can we trailer and ratings in IMDB using safari view. And in profile we can see what are the movies that user wants to see later.


And in home we can see segment contains two types i.e., movies and series and we have genres where user can click on what type of movies or series they want and according to IMDB they will get recommendations. 
                       

Swift 5 implementation:
Animation:  It refers to the process of creating dynamic and visually appealing changes in user interface elements. It involves altering the properties of UI elements over time to create effects such as transitions, movements, and visual feedback. 
TableView: Table view is used to show the watchlist movies which are added from search.
Alert: An "Alert" is a user interface component that displays a pop-up message or dialog box to provide information, request user input, or confirm actions. Alerts typically contain buttons for user interaction. 
Perform Segue: "Performing a Segue" involves transitioning from one view controller to another in an iOS application. Segues define the navigation and flow between different screens or view controllers. 
Collection View: A "Collection View" is a user interface element used to display and manage a grid or list of items, offering flexibility and customization for presenting data in various layouts and styles. 
Action Sheet: An "Action Sheet" is a user interface component that presents a list of options or actions to the user. It often slides up from the bottom of the screen and allows users to choose from a set of actions. 
Data transfer: When you move from one view controller to another, you can use segues to pass data. You typically override ‘prepare (for:sender:)’ in the source view controller and set properties in the destination view controller.
Conclusion: 
This application can provide search according to users preference and can allow users to maintain watchlist and recommend movies or series by genre.
