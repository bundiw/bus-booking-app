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

        {
            "error": false,
            "message": "Login successfull",
            "user": {
                "user_id": 14,
                "username": "Christoper Bundi",
                "phone": "0702612564",
                "email": "bundichris1400@gmail.com",
                "gender": "Male"
            }
        }



    ## error

    The trigger of login error include the use of invalid credential to login

        {
            "error": true,
            "message": "Invalid username or password"
        }

    **Request**
    For the api to invoke login, pass the query parameter as http://192.168.43.220/bus_booking/Api.php?apicall=login

    To login supply the email and password as

    ## Form Fields

        key = email
        value = bundichris1400@gmail.com

        key = password
        value = 123

    ## Sign up

    The signup api within the api provides the response shown below

    *** Response**

    ## success

        {
            "error": false,
            "message": "User registered successfully",
            "user": {
                "user_id": 17,
                "username": "chris bundi",
                "phone": "0100000000",
                "email": "fairapp@gmail.com",
                "gender": "male"
            }
        }

    ## error

    One trigger of error is use of already registered phone or email to login. example
    {
    "error": true,
    "message": "User with that email or phone number is already registered"
    }

    **Request**

2.  http://localhost/BookAPI.php
    The API allow for saving of travel details for given route. To ensure effectivenes it works closely with the trasaction.php API.

    *** Response**

    ## success

        {
            "error": false,
            "message": "Bus Book sucessfully"
        }



    ## error
    Error can emanate from not passing desired field or null value for a mandatory field

        {
            "error": true,
            "message": "Invalid API Call"
        }

    **Request**
    The url has one parameter, 192.168.43.220/bus_booking/BookApi.php?book=0 the the form field includes

    ## Form Fields

            key = email
            value = bundichris1400@gmail.com

            key = phone
            value = 0100000000

            key =from
            value = mombasa

            key = destination
            value = nairobi

            key = registration
            value = KAY 789E

            key = comfort
            value = vip

            key = date
            value = 2021-12-11

            key = time
            value = 12:00

            key = amount
            value =  = 2700

            key = transcode
            value = AK47

3.  http://localhost/RouteAPI.php
    The API populates the booking screen with data for a existing routes(added by the admin)

    *** Response**

    ## success

    {
        "error": false,
        "message": "Routes fetched sucessfully",
        "routes": [
            {
            "depart_from": "mombasa"
            },
            {
            "depart_from": "Meru"
            }
        ]
    }

    OR 

    {
        "error": false,
        "message": "Routes fetched sucessfully",
        "routes": [
            {
            "travel_time": "12:00"
            }
        ]
    }

         

    ## error
       The different class of error have been different messages as in the examples below

        {
            "error": true,
            "message": "Invalid API Call"
        }

        or

        {
            "error": true,
            "message": "Route Not Available"
        }

        

    **Request**

        The query parameter for routes must be passed in order for the fetch of valid data to be done as in the example 
        
        http://192.168.43.220/bus_booking/RouteApi.php?routes=variable-value 

        
        ***variale value** include but limited to values in the list ['from','to', 'comfort','day','time','bus']


4.  http://localhost/StatusAPI.php
    The API provides status of user travel booking that is pending(admin yet to approve), active(approved by admin) and cancel(user need to be refunded although for a fraction due to the inconvienience caused).
    *** Response** 
    ## success
    Depending on the desired status like past booking, a form field of key status is filled and on submission all the past bookings are displayed. 

    {
        "error": false,
        "message": "Booking fetched successfully",
        "books": [
            {
            "book_id": 84,
            "user_email": "bundichris1400@gmail.com",
            "user_phone": "0702612564",
            "depart_from": "mombasa",
            "destination": "nairobi",
            "plate_registration": "KCD",
            "bus_comfort": "vvip",
            "book_date": "2021-12-12",
            "book_time": "07:12",
            "ticket_amount": 2850,
            "mpesa_code": "Ak47",
            "book_status": "ACTIVE",
            "ticket_no": 11,
            "admin_no": 15
            },
            {
            "book_id": 85,
            "user_email": "bundichris1400@gmail.com",
            "user_phone": "0702612564",
            "depart_from": "mombasa",
            "destination": "nairobi",
            "plate_registration": "KCD",
            "bus_comfort": "vvip",
            "book_date": "2021-12-12",
            "book_time": "07:12",
            "ticket_amount": 2850,
            "mpesa_code": "Ak48",
            "book_status": "ACTIVE",
            "ticket_no": 11,
            "admin_no": 15
            },
            {
            "book_id": 86,
            "user_email": "bundichris1400@gmail.com",
            "user_phone": "0702612564",
            "depart_from": "mombasa",
            "destination": "nairobi",
            "plate_registration": "KAQ",
            "bus_comfort": "Ordinary",
            "book_date": "2021-11-12",
            "book_time": "10:00",
            "ticket_amount": 2500,
            "mpesa_code": "Ak49",
            "book_status": "PENDING",
            "ticket_no": null,
            "admin_no": null
            },
            {
            "book_id": 87,
            "user_email": "bundichris1400@gmail.com",
            "user_phone": "0100000000",
            "depart_from": "mombasa",
            "destination": "nairobi",
            "plate_registration": "KAY 789E",
            "bus_comfort": "vip",
            "book_date": "2021-12-11",
            "book_time": "12:00",
            "ticket_amount": 2700,
            "mpesa_code": "AK47",
            "book_status": "PENDING",
            "ticket_no": null,
            "admin_no": null
            }
        ]
        }
            

    ## error
    sample error include
    {
        "error": true,
        "message": "Invalid API Call"
    }

    

    **Request**
    For the request to be success form field status must be supplied

    ## Form Fields

       key =  status
       value = past

       key = email
       value = bundichris1400@gmail.com




5.  http://localhost/transaction.php
    The API gives an interface for all the transaction codes. This ensures that the transaction code supplied by a user is valid in order to allow for booking. It also keep track of the used transaction code to prevent client from reusing a used code.
    *** Response**

    ## success

        {
            "error": false,
            "message": "Code verification Success",
            "mpesa": "AK47"
        }

         

    ## error
    There are several error messages as in the example below

        {
            "error": true,
            "message": "Invalid API Call"
        }

        or 

        {
            "error": true,
            "message": "Invalid Transaction Code, Retry or Contact Admin"
        }

    **Request**

    *** For admin web application**

6.  http://localhost/login.php
    The API allow the super user to login within the application web control and initiate the administrative roles.
    *** Response**

    ## success

    

    ## error

         

    **Request**

7.  http://localhost/MainAPIs.php
    The MainAPIS is composed of several(buses,routes, approve and summary) apis that populates depending on the user action withing the admin board.
    *** Response**

    ## success

    

    ## error

    

    **Request**

8.  http://localhost/SubAPIs.php
    The API is responsible for populating buses that travel in given routes and are yet to fill to capacity for given trip.

    *** Response**

    ## success

        

    ## error

    

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
