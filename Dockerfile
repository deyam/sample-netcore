FROM microsoft/dotnet:2-sdk

COPY ValueApi/bin/Release/netcoreapp2.0 /app
COPY tls.crt  /usr/local/shared/ca-certificates/
RUN update-ca-certificates
RUN apt add --no-cache ca-certificates

ENTRYPOINT ["dotnet", "/app/ValueApi.dll"]

