********************************************************************************************************************
Features implemented in Project(as per Assignment): 
********************************************************************************************************************
1.Used the object-oriented design principles and utilized the MVC architecture to build web application that will allow customers to rent a car online from EasyTrip website .
2.EasyTrip Car rental service has following Car catagories
  	Eco-Friendly
	Sports
	Compact
	Fullsize
	Luxury
	SUV
	Full-Size SUV
	Minivan
	Convertible
3. The Rental service has Cutomer and Admin
4. Admin can create/update/delete Customer account
             add/update/delete Customer order details(reservation tab)
             add/update/delete Vehicles
             add/update/delete Location
             add/update/delete Accessories
			 add/update/delete Insurance
			 add/update/delete Promotions
5. Rental service offers Accessories and Insurance that can be purchased by customer for every order.
6. Customer can create account online
7. Customer can book a car, check status and cancel booking.
8. When Customer chooses to book a car
    Customer will enter personal information (Name, Address, Credit Card, etc.) 
    Customer will be given a booking ID.
    Customer can cancel booking at later time.
9. Car for every category are stored in XML file, which is loaded on startup using SAX parser.
10. Account login information, customer transaction/order stored in MySQL database.
11. All order updates insert/update/delete reflected in MySQL database.
12. Customer is able to submit Car review which is stored in MongoDB database(NoSQL database)
13. Trending feature 
	1. Top five most liked vehicles
	2. Top five booked vehicles
	3. Top five reviewed vehicles
	4. Top five booked locations
	5. Top 5 reviewed zip-codes
	6. Top 5 reviewed locations
14. When the app-server starts up, the Vehicles are first read into a hashmap from VehicleCatalog.xml file and then stored in MySQL database.
15. Search AutoCompletion feature
	1. In PickUp Location
	2. In Search Location Tab
16. DealMatch feature(Promotion)
	1. In Promotions Tab (Getting tweets from twitter screen name CarRentalSavers)
********************************************************************************************************************

Total lines of code: 14000 LOC

********************************************************************************************************************
To deploy and run the application easytrip follow below steps:
********************************************************************************************************************

1. Place easytrip application folder in path C:\apache-tomcat-7.0.34\webapps
2. Create database as follows:
       1.Login to MySQL with the credentials username: root,password: root
       2.Run following SQL statement to create easytrip database
            create database easytrip;
       3.Run SQLscripts provided in folder tables to create easytrip tables.
       
       
3. Set the classpath for tomcat, mongoDB and mysql
    set JAVA_HOME=C:\jdk1.7

    set PATH="C:\jdk1.7\bin";%PATH%

    set CLASSPATH=.;C:\apache-tomcat-7.0.34\lib\servlet-api.jar;
         C:\apache-tomcat-7.0.34\lib\jsp-api.jar;
         C:\apache-tomcat-7.0.34\lib\el-api.jar;
         C:\apache-tomcat-7.0.34\lib\commons-beanutils-1.8.3.jar;
         C:\apache-tomcat-7.0.34\lib\mysql-connector-java-5.1.39-bin.jar;
         C:\apache-tomcat-7.0.34\lib\mongo-java-driver-3.1.1.jar

    set ANT_HOME=c:\apache-tomcat-7.0.34

    set TOMCAT_HOME=C:\apache-tomcat-7.0.34

    set CATALINA_HOME=C:\apache-tomcat-7.0.34
4. Start the MongoDB server from location C:\Program Files\MongoDB\Server\3.2\bin\mongod.exe  
5. Start MySql server from windows menu
6. Start Tomcat server from C:\apache-tomcat-7.0.34\bin\startup
7. credentials.txt and DealMatches.txt and python script EasyTripDealMatches.ipynb should be in easytrip folder. Run the script before running the application
8. open the below link in Mozilla to run the application
   http://localhost/bestdeal/index.jsp