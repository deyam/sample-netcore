FROM microsoft/dotnet:2-sdk

COPY ValueApi/bin/Release/netcoreapp2.0 /app
COPY ./tls.crt  /usr/local/share/ca-certificates/
RUN update-ca-certificates
#RUN apk add --no-cache ca-certificates
RUN apt update && apt install ca-certificates && rm -rf /var/cache/apt/*
ENTRYPOINT ["dotnet", "/app/ValueApi.dll"]

