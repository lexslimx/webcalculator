$rgname="webcalculator-rg"
$rglocation="southafricanorth"
$spname="webcalculator-sp"
$sku="free"
$webappname="webcalculator"

az group create -n $rgname --location $rglocation
az appservice plan create -n $spname -g $rgname --sku $sku --location $rglocation
az webapp create --name $webappname -g $rgname --plan $spname

