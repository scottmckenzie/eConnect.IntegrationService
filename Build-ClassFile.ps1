dotnet tool install -g dotnet-svcutil
dotnet-svcutil.exe http://localhost/Microsoft/Dynamics/GP/eConnect/mex?wsdl -n "*,eConnect.IntegrationService" -o eConnect.IntegrationService.cs
# replace fully qualified namespace references as they class with eConnect interface
(Get-Content .\ServiceReference1\eConnect.IntegrationService.cs) -replace 'eConnect\.IntegrationService\.','' | Set-Content .\ServiceReference1\eConnect.IntegrationService.cs
