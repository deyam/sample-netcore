FROM microsoft/dotnet:2-sdk

COPY ValueApi/bin/Release/netcoreapp2.0 /app
RUN apk add --no-cache ca-certificates

ENTRYPOINT ["dotnet", "/app/ValueApi.dll"]

