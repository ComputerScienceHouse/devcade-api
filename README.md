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

```Bash
podman build . --tag devcade-api
```


You can run the container on your local machine with

```Bash
podman run --rm -it --name devcade-api -p 8277:8277 --env-file=.env devcade-api
```


## Routes
All routes and definitions are provided via OpenAPI/Swagger at [https://devcade.csh.rit.edu/api/docs/](https://devcade.csh.rit.edu/api/docs/)

## Testing
### Run Tests
First build the container
```Bash
podman compose -f docker-compose.test.yml build --rm devcade-api
```
Then run the container once with
```Bash
podman compose -f docker-compose.test.yml run --rm devcade-api
```
### Local integration testing
Runs the API locally with test data, so API calls do not mess with the production database and s3 bucket   
First build the container
```Bash
podman compose -f docker-compose.yml build devcade-api
```
Start the container with
```Bash
podman compose -f docker-compose.yml up devcade-api
```
Stop the container with
```Bash
podman compose -f docker-compose.yml down devcade-api
```