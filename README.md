# API

The API is used to interact with the game library by the cabinet and the website. It requires a few resources:

 - S3 Buckets
  - Game Images
  - Game Saves
    

- Databases
  - Postgres
    - For storing information about games

Source code can be found at: https://github.com/ComputerScienceHouse/devcade-api

- Download project and run ```npm install```
- Use ```npm run dev``` to start the development server.
- There is a file called [.env.template](/.env.template) in the `./onboard` folder. Copy the file to a new file called `.env` in the same directory. Then get the values from an RTP or a Devcade Admin

## Podman

First, build the container.

```podman build . --tag devcade-api```


You can run the container on your local machine with

```podman run --rm -it --name devcade-api -p 8277:8277 --env-file=.env devcade-api```


## Routes
All routes and definitions are provided via OpenAPI/Swagger at [https://devcade-api.csh.rit.edu/docs/](https://devcade-api.csh.rit.edu/docs/)
