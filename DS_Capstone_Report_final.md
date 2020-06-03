**Capstone Project - The Battle of Neighborhoods (Week 1)**

**Introduction:**
Let's say you have never been to the US and you want to have only pizza while you are there. So you want to go to a place with a high density of Pizza places around you. The problem we aim to solve is to analyze the Pizza stores' locations in the major US cities and find the best place for our tourist so that he can have a good pizza-tourism.

**Data Section:**
I will use the FourSquare API to collect data about locations of Pizza stores in 5 major US cities which are: New York,NY, San Francisco, CA, Jersey City, NJ, Boston, MA and Chicago,IL. These are one of the most populated US cities and I am hopeful that they will contain the best Pizza places in the US.

**Methodology:**
1. Import all the neccessary libraries.
2. Entering the Client Credentials to get the access of the FOURSQUARE.
3. Enter the 5 Major Cities, define the corresponding url & Send the GET Request and examine the results.
4. Get relevant part of JSON and transform it into a pandas dataframe.
5. Find the total number of pizza places in different cities, the Foursquare API Only gives us the nearest 100 venues in the city.
6. Display the locations of pizza places in maps of different cities.
7. To calculate the mean distance from mean coordinators.

**Results:**
After using FOURSQUARE API & for display we have used Folium, we can see that New York and Jersey City are the most dense cities with Pizza places. And better than that, they are just one shore away. However, Let's have a concrete measure of this density. For this I will use some basic statistics. I will get the mean location of the pizza places which should be near to most of them if they are really dense or far if not. Next I will take the average of the distance of the venues to the mean coordinates.

**Conclusion**:
As we have calculated the mean distance from mean coordinators, we can see that New York & Jersey city are highly densed, but New york City is more dense than the Jersey city. 
So by seeing this we come to the conclusion that tourist will mostly come to New York city to enjoy pizza as the restaurant are quiet near to each other.
