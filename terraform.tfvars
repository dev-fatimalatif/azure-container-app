//tags values
project = "proxy-container"
env     = "test"

//resource group values
# rgName   = "test_xyz"
# azRegion = "West US"

// storage account values must be a valid name
# storageAccountNames = [
#   "testappstorage1",
#   "testappstorage2",
#   "testappstorage3"
# ]


// appEnvironment values
appEnvironmentName = "test"

// logAnalytics Workspace values
logAnalyticsWorkspaceName = "logs"
// frontdoor values
# fdprofileName = "abcfrontdoor"
# customDomainName = "abc-xyz-app" //same name as domain but seprated with "-"
# domainHostName = "abc.xyz.app"  // actual domain name
# recordName= "abc"  // record name must be same as subdomain (abc as in case of abc.xyz.com)
# dnsZoneRG= "xyz-rg" // rg where zone exit
# dnsZoneName= "xyz.app" // name of zone

// container app values
dockerUserPassword = "dockerpassword"

apiscontainerapps = {
  apis = {
    containerAppName = "apis"
    keyVaultName     = "testapiskeyvault"
    min_replicas     = 1
    max_replicas     = 2
    docker_image     = "ghcr.io/xyz/orca-apis:dev"
    secrets = ["orcadatabase", "awsaccesskeyid", "awssecretaccesskey", "awsdefaultregion", "awsregion",
      "aspnetcoreenvironment", "mailfrom", "exportemailfrom", "documentprocessorserviceurl",
      "userpoolid", "clientid", "cognitossoappsecret", "samlredirecturi", "samltokenuri", "samlurl", "allowcorsurl",
      "notificationfromaddressesmailnotificationfrom", "notificationfromaddresseswebnotificationfrom", "accountsettingsserverlink",
      "indexingenginebaseurl", "indexingengineapikey", "documentconversionapikey",
    "documentconversionconversionbaseurl", "documentconversionconverterapiroute", "dockerpassword"]
    // "awsolangurl"
    env_variables = {
      "ORCADATABASE"           = "orcadatabase"
      "AWS_ACCESS_KEY_ID"      = "awsaccesskeyid"
      "AWS_SECRET_ACCESS_KEY"  = "awssecretaccesskey"
      "AWS_DEFAULT_REGION"     = "awsdefaultregion"
      "AWS__REGION"            = "awsregion"
      "ASPNETCORE_ENVIRONMENT" = "aspnetcoreenvironment"
      "MAILFROM"               = "mailfrom"
      "EXPORTEMAILFROM"        = "exportemailfrom"
      "DOCUMENTPROCESSORSERVICEURL"                     = "documentprocessorserviceurl"
      "USERPOOLID"                                      = "userpoolid"
      "CLIENTID"                                        = "clientid"
      "COGNITOSSOAPPSECRET"                             = "cognitossoappsecret"
      "SAMLREDIRECTURI"                                 = "samlredirecturi"
      "SAMLTOKENURI"                                    = "samltokenuri"
      "SAMLURL"                                         = "samlurl"
      "ALLOWCORSURL"                                    = "allowcorsurl"
      "NOTIFICATIONFROMADDRESSES__MAILNOTIFICATIONFROM" = "notificationfromaddressesmailnotificationfrom"
      "NOTIFICATIONFROMADDRESSES__WEBNOTIFICATIONFROM"  = "notificationfromaddresseswebnotificationfrom"
      "ACCOUNTSETTINGS__SERVERLINK"                     = "accountsettingsserverlink"
      "INDEXINGENGINE__BASEURL"                         = "indexingenginebaseurl"
      "INDEXINGENGINE__APIKEY"                          = "indexingengineapikey"
      "DOCUMENTCONVERSION__APIKEY"                      = "documentconversionapikey"
      "DOCUMENTCONVERSION__CONVERSIONBASEURL"           = "documentconversionconversionbaseurl"
      "DOCUMENTCONVERSION__CONVERTERAPIROUTE"           = "documentconversionconverterapiroute"
      "dockerpassword"                                  = "dockerpassword"
    }
  }
}

mutualizercontainerapps = {
  mutualizer = {
    containerAppName = "mutualizer"
    min_replicas     = 1
    max_replicas     = 2
    keyVaultName     = "mutualizerkeyvault"
    docker_image     = "ghcr.io/xyz/orca-proxy-server:latest"
    secrets          = ["apienv", "apikey", "openaiapitype", "openaiapibase", "openaiapiversion", "openaiapikey", "claudeapikey", "openaiapitypefinetuned", "openaiapibasefinetuned", "openaiapiversionfinetuned", "openaiapikeyfinetuned", "apimsubscriptionkey", "dockerpassword"]
    env_variables = {
      "API_ENV"                      = "apienv"
      "API_KEY"                      = "apikey"
      "OPENAI_API_TYPE"              = "openaiapitype"
      "OPENAI_API_BASE"              = "openaiapibase"
      "OPENAI_API_VERSION"           = "openaiapiversion"
      "OPENAI_API_KEY"               = "openaiapikey"
      "CLAUDE_API_KEY"               = "claudeapikey"
      "OPENAI_API_TYPE_FINETUNED"    = "openaiapitypefinetuned"
      "OPENAI_API_BASE_FINETUNED"    = "openaiapibasefinetuned"
      "OPENAI_API_VERSION_FINETUNED" = "openaiapiversionfinetuned"
      "OPENAI_API_KEY_FINETUNED"     = "openaiapikeyfinetuned"
      "APIM_SUBSCRIPTION_KEY"        = "apimsubscriptionkey"
      "dockerpassword"               = "dockerpassword"
    }
  }
}