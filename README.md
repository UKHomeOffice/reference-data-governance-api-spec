# reference-data-governance-api-spec

>The API specification for the Reference Data Service API (which also includes a mock server)

## Developing the API specification

This project uses the [OpenAPI](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md) standard to document the Reference Data Service API.

## Viewing the API specification

You can view the Swagger spec in a local Swagger docker container by running the following command, from this project's directory:

```
docker run -p 80:8080 -e SWAGGER_JSON=/tmp/swagger.yml -v `pwd`:/tmp swaggerapi/swagger-ui
```

After making changes to the `swagger.yml` you will need to refresh your browser to see the updates (there is no need to restart the Docker container).

## Format of API responses

The API responses will follow a standard format, as shown by the following examples:

A successful response, that returns one data item from a data set:

```
{
  "status": "success",
  "code": 200,
  "_links": {
    "self": "https://api.refdata.homeoffice.gov.uk/v1/datasets/countries/items/12",
    "next": "https://api.refdata.homeoffice.gov.uk/v1/datasets/countries/items/11",
    "previous": "https://api.refdata.homeoffice.gov.uk/v1/datasets/countries/items/13"
  },
  "data": [
    {
      "id": 12,
      "code": "GBR",
      "name": "United Kingdom"
    }
  ]
}
```

An unsuccessful response:

```
{
  "status": "failure",
  "code": 401,
  "type": "unauthorized",
  "detail": "The user is not authorized to perform this request"
}
```
