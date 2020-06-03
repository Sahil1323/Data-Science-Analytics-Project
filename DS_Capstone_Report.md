**Capstone Project - The Battle of Neighborhoods (Week 1)**

**Introduction:**
Let's say you have never been to the US and you want to have only pizza while you are there. So you want to go to a place with a high density of Pizza places around you. The problem we aim to solve is to analyze the Pizza stores' locations in the major US cities and find the best place for our tourist so that he can have a good pizza-tourism.

**Data Section:**
I will use the FourSquare API to collect data about locations of Pizza stores in 5 major US cities which are: New York,NY, San Francisco, CA, Jersey City, NJ, Boston, MA and Chicago,IL. These are one of the most populated US cities and I am hopeful that they will contain the best Pizza places in the US.

**Steps:**
1. Import all the neccessary libraries.
2. Entering the Client Credentials to get the access of the FOURSQUARE.
3. Enter the 5 Major Cities, define the corresponding url & Send the GET Request and examine the results.
4. Get relevant part of JSON and transform it into a pandas dataframe.
5. Finding the total number of pizza places in different cities, the Foursquare API Only gives us the nearest 100 venues in the city.
6. Calculate the mean distance from mean coordinators.
