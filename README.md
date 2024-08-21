##MAkersharks Assignment##

To run the program, ther are two methods:

1. Docker

   Make sure Docker is installed in your System.
   1. run the command on terminal: "docker pull ashishhiggins/makesharks:latest"
   2. run the docker container using the command: "docker run --name makesharks-container -d -p 8080:8080 ashishhiggins/makesharks:latest"
  
   3. To test the query api, run: curl -X POST "http://localhost:8080/api/supplier/query?location=Pune&natureOfBusiness=MEDIUM_SCALE&manufacturingProcess=MODELLING&page=0" ^
     -H "Authorization: Basic YWRtaW46YWRtaW4="

      or can use the postman collection added in the repository, download the postman_collection and import it using postman.

2. Clone the Repository

  CLone the repository, and in an ide open the maven project and select the pom.xml file to open the project, load the maven changes and run the MakesharksApplication.java file.

  2. . To test the query api, run: curl -X POST "http://localhost:8080/api/supplier/query?location=Pune&natureOfBusiness=MEDIUM_SCALE&manufacturingProcess=MODELLING&page=0" ^
     -H "Authorization: Basic YWRtaW46YWRtaW4="

      or can use the postman collection added in the repository, download the postman_collection and import it using postman.

#Note:

The default username and password for sprinfg security is 
username: admin
password: admin
