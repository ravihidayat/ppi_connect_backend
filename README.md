# PPI Connect API Server

A server that exposes certain endpoints to handle data requests from [PPI Connect Mobile Application](https://github.com/ravihidayat/ppi-connect). It is written in Node.Js, Express, and utilizes MySQL as the database.

This project is hosted on Heroku:

```
https://ppiconnect.herokuapp.com/
```

# Background

A group project that is integral to our Mobile Application Programming [Flutter app project](https://github.com/ravihidayat/ppi-connect), taken on the last semester, 2020-2021 1.

# Installation

1. Clone this repo
2. Run ```npm i```
3. Copy the .env.example 

```
cp .env.example .env
```

4. Enter the correct ENVs, then proceed to spin up the local database. Run the server by executing ```npm run server```Make sure to configure the local environment IP, which is where this server is hosted, in 

```/lib/services/rest.dart```

Then look for _baseUrl variable, and change the default value to ```http://10.0.2.2:3000```