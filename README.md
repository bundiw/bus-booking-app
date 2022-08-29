## Word of Caution

The project documentation has been added to the project after almost an year of building the project and since then many lesson has been learnt on optimal approach to similar projects. Also, documenting alongside implementation has been determined to be most appropriate and useful documentation technique.

## Bus Booking Mobile Application

## Introduction

The Bus Booking App is a travellers app that allow booking travel ticket from a travel agency(travel-saccco ). The app is populated with the data for the different travel route and a traveller can register with the app to book for travel. The earlier the booking the higher the discount offered to the passanger. Additionally, as an incentive to use the travel agency a discount is offeres for all travel within peakoff hours.
The app also is accompanied by a simple admin system where the admin can add new travel route, bus(means of transport), approve the booking by app users and view summary report .

## Overview

## Tech Stack (Dependencies)

### 1. Backend Dependencies

Our tech stack will include the following:

- **Android Studio** this is the main tool used to build the app
- **mysql** as our database of choice
- **php and java** the JAVA language is used to build the application logic while PHP is used to build APIs used bby the app.
- **XAMPP** for creating server used to run the mysqla and php

### 2. Frontend Dependencies

The web application is moved inside the htdocs.
For the we application the frontend technology is

- **HTML CSS and jquery/javascript** the application UI is built in xml while the admin dashboard is based on HTML,CSS and javascript
  For the mobile application the frontend technology is
- **xml** this is used to define the input fields, textfields,imageareas and the layout used for the application.

## Main Files: Project Structure

- **bus_booking.zip** file contains the webapplication as well as all the php APIs

- **busbookingApp.zip** the file contain all the files that android studio requires to import the pplication. Remember to update the APIs with your device specific IP address.

## Verify the app and web system

To verify the app assumming the importation of the app was success and that the php/webapplication is withing the htdocs folder
**create hotspot** within your pc or smartphone and make sure you connect the other device to the network from the hotspot.  
 **run the app** connect the smartphone with usb with the computer,(make sure the mobile has usb degugging enabled and the respective adb driver are installed within te pc) on the android studio run the app to install it to the smart phone
**run admin web** use the url http://localhost/bus_booking/AdminBoard

## App APIS and testing

*** For app**

1.  http://localhost/API.php
    This API allow for registration of new account as well as login of already existing account. Dependng on the parameter passed by the user the desired operation is invoked.

    ## login

    *** Response**

    ## success

         g

    ## error

        rr

    **Request**

## register

    *** Response**
        ## success
          g

        ## error
          rr

    **Request**

2.  http://localhost/BookAPI.php
    The API allow for saving of travel details for given route. To ensure effectivenes it works closely with the trasaction.php API.

    *** Response**

    ## success

         g

    ## error

        rr

    **Request**

3.  http://localhost/RouteAPI.php
    The API populates the booking screen with data for a existing routes(added by the admin)

    *** Response**

    ## success

         g

    ## error

        rr

    **Request**

4.  http://localhost/StatusAPI.php
    The API provides status of user travel booking that is pending(admin yet to approve), active(approved by admin) and cancel(user need to be refunded although for a fraction due to the inconvienience caused).
    *** Response** ## success
    g

    ## error

        rr

    **Request**

5.  http://localhost/transaction.php
    The API gives an interface for all the transaction codes. This ensures that the transaction code supplied by a user is valid in order to allow for booking.
    *** Response**

    ## success

         g

    ## error

        rr

    **Request**

    *** For admin web application**

6.  http://localhost/login.php
    The API allow the super user to login within the application web control and initiate the administrative roles.
    *** Response** 
       ## success
    g

       ## error
         rr

    **Request**

7.  http://localhost/MainAPIs.php
    The MainAPIS is composed of several(buses,routes, approve and summary) apis that populates depending on the user action withing the admin board.
    *** Response** 
    ## success
    g

    ## error

    rr

    **Request**

8.  http://localhost/SubAPIs.php
    The API is responsible for populating buses that travel in given routes and are yet to fill to capacity for given trip.

    *** Response**

    ## success

        g

    ## error

    rr

    **Request**

9.  http://localhost/ApproveAPIs.php
    The API allow the admin to approve the booking by an application client
    *** Response**

    **Request**

## Important !!!

*** Thankyou for downloading this application.**

*** Please support my work**

    Order a refactored version of the application including  migrations and Pyton/flask powering the APIs or node/express (depending on your needs), with more concise code i.e reduced boilerplate codes, use ORM (sqlalchemy library), standard naming of APIs, desired customization of the application and more elaborate documentations.

*** Affordable price starting from 50$**

*** Quick delivery after order**

*** share feedback/comment on the github within the project**

*** Contact info bchristech@gmail.com**
