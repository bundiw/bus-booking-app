## Bus Booking Mobile Application

## Introduction

The Bus Booking App is a travellers app that allow booking travel ticket from a travel agency(travel-saccco ). The app is populated with the data for the different travel route and a traveller can register with the app to book for travel. The earlier the booking the higher the discount offered to the passanger. Additionally, as an incentive to use the travel agency a discount is offeres for all travel within peakoff hours.
The app also is accompanied by a simple admin system where the adimin can add new travel route, bus and also approve the booking by app users.

## Overview

## Tech Stack (Dependencies)

### 1. Backend Dependencies

Our tech stack will include the following:

- **Android Studio** this is the main tool used to build the app
- **mysql** as our database of choice
- **php and java** the java language is used o build the application logic while php is used to build APIs used bby the app.
- **XAMPP** for creating server used to run the mysqla and php

### 2. Frontend Dependencies

The web application is moved inside the htdocs.
For the we application the frontend technology is

- **html css and jquery/javascript** the application UI is built in xml while the admin dashboard is based on html,css and javascript
  For the mobile application the frontend technology is
- **xml** this is used to define the input fields, textfields,imageareas and the layout used for the application.

## Main Files: Project Structure

- **bus_booking.zip** file contains the webapplication as well as all the php apis

- **busbookingApp.zip** the file contain all the files that android studio requires to import the pplication. Remember to update the apis with your device specific IP address.

## Verify the app and web system

To verify the app assumming the importation of the app was success and that the php/webapplication is withing the htdocs folder
**create hotspot** within your pc or smartphone and make sure you connect the other device to the network from the hotspot.  
 **run the app** connect the smartphone with usb with the computer,(make sure the mobile has usb degugging enabled and the respective adb driver are installed within te pc) on the android studio run the app to install it to the smart phone
**run admin web** use the url http://localhost/bus_booking/AdminBoard
