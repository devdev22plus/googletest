#!/bin/bash

dotnet publish -c Release
cp app.yaml ./bin/Release/netcoreapp2.2/publish/app.yaml

gcloud app deploy ./bin/Release/netcoreapp2.2/publish/app.yaml --project easytemplate
