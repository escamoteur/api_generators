This folder contains generated API packages using the generator from https://openapi-generator.tech/

*api* uses the normal 'dart' generator which generates really straight forward code
*api-dio* uses the 'dart-dio' generator which also uses the build *build_value* package for the model classes and *dio* as web client

to generate the code you have to use this command line (-g either dart or dart-dio)

java -jar openapi-generator-cli.jar generate -i .\openapi.js
on -g dart -o .\api\