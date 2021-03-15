FROM microsoft/dotnet:2-sdk

COPY ValueApi/bin/Release/netcoreapp2.0 /app
COPY ./tls.crt  /usr/local/share/ca-certificates/
RUN update-ca-certificates
#RUN apk add --no-cache ca-certificates
RUN apt update && apt add ca-certificates && rm -rf /var/cache/apk/*
ENTRYPOINT ["dotnet", "/app/ValueApi.dll"]

