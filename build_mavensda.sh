
#!/bin/bash
HOME=/home/projects/Mercury
USERNAME=bruno.souza
PASSWORD=bs1818#
#WEBLOGIC_UPLOAD=$home/Oracle/Middleware/user_projects/domains/ad_domain/servers/AdminServer/upload

cd $HOME/ifc-base/trunk/ifc-base
echo "************************************** Rodando mvn clean install no ifc-base **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

echo "************************************** Rodando mvn clean install no AcecInvoiceInfo **************************************"
mvn install:install-file -Dfile=$HOME/ifc-base/trunk/ifc-base/lib/AcecInvoiceInfo.xsd.jar -DgroupId=br.com.acec -DartifactId=acecInvoiceInfo -Dversion=1.0 -Dpackaging=jar

cd $HOME/geocoder-java/trunk
echo "************************************** Rodando mvn clean install no geocoder-java **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

echo "************************************** Rodando mvn clean install no wlfullclient **************************************"
mvn install:install-file -Dfile=$HOME/ifc-common/trunk/ifc-common/lib/wlfullclient.jar -DgroupId=weblogic -DartifactId=wlfullclient -Dversion=1.0 -Dpackaging=jar

echo "************************************** Rodando mvn clean install no acecCommom **************************************"
mvn install:install-file -Dfile=$HOME/ifc-common/trunk/ifc-common/lib/acecCommon.jar -DgroupId=br.com.acec -DartifactId=acecCommon -Dversion=1.0 -Dpackaging=jar

cd $HOME/ifc-util/trunk/ifc-util
echo "************************************** Rodando mvn clean install no ifc-util **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-common/trunk/ifc-common
echo "************************************** Rodando mvn clean install no ifc-commom **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-model-ecad/trunk/ifc-model-ecad
echo "************************************** Rodando mvn clean install no ifc-model-ecad **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-model-ecsl/trunk/ifc-model-ecsl
echo "************************************** Rodando mvn clean install no ifc-model-ecsl **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-model-security/trunk/ifc-model-security
echo "************************************** Rodando mvn clean install no ifc-model-security **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-security/branches/ifc-security
echo "************************************** Rodando mvn clean install no ifc-security **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-security/trunk/ifc-security
echo "************************************** Rodando mvn clean install no ifc-security **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-solr-model/trunk/ifc-solr-model
echo "************************************** Rodando mvn clean install no ifc-solr-model **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-async/trunk/ifc-async
echo "************************************** Rodando mvn clean install no ifc-async **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-integration/trunk/ifc-integration
echo "************************************** Rodando mvn clean install no ifc-integration **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-freight/trunk/ifc-freight
echo "************************************** Rodando mvn clean install no ifc-freight **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-content/trunk/ifc-content
echo "************************************** Rodando mvn clean install no ifc-content **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-order-sales/trunk/ifc-order-sales
echo "************************************** Rodando mvn clean install no ifc-order-sales **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-customer/trunk/ifc-customer
echo "************************************** Rodando mvn clean install no ifc-customer **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-stock/trunk/ifc-stock
echo "************************************** Rodando mvn clean install no ifc-stock **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

#cd $HOME/ifc-omni-channel/trunk/ifc-omni-channel
#echo "************************************** Rodando mvn clean install no ifc-omni-channel **************************************"
#svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
#mvn clean -Dmaven.test.failure.ignore=true install

#cd $HOME/ifc-integration-trustvox/trunk/ifc-integration-trustvox
#echo "************************************** Rodando mvn clean install no ifc-integration-trustvox **************************************"
#svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
#mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-order/trunk/ifc-order
echo "************************************** Rodando mvn clean install no ifc-order **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-payment/trunk/ifc-payment
echo "************************************** Rodando mvn clean install no ifc-payment **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install

cd $HOME/ifc-integration-millennium/trunk/ifc-integration-millennium
echo "************************************** Rodando mvn clean install no ifc-integration-millennium **************************************"
svn update --username $USERNAME --password $PASSWORD --non-interactive --no-auth-cache
mvn clean -Dmaven.test.failure.ignore=true install