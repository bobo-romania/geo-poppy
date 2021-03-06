#!/bin/sh 
#
# Commande d'installation
### wget -P --no-check-certificate /home/pirate wget https://raw.githubusercontent.com/jancelin/geo-P --no-check-certificateoppy/master/install/auto_install_geopoppy.sh; chmod +x /home/pirate/auto_install_geopoppy.sh; sh /home/pirate/auto_install_geopoppy.sh

wget -P --no-check-certificate /home/pirate https://raw.githubusercontent.com/jancelin/rpi_wifi_direct/master/raspberry_pi3/install_wifi_direct_rpi3.sh; chmod +x /home/pirate/install_wifi_direct_rpi3.sh; bash -x /home/pirate/install_wifi_direct_rpi3.sh &&
mkdir /home/pi &&
wget -P --no-check-certificate /home/pi https://github.com/jancelin/geo-P --no-check-certificateoppy/raw/master/install/geopoppy_sig.tar &&
wget -P --no-check-certificate /home/pi https://github.com/jancelin/geo-P --no-check-certificateoppy/raw/master/install/geopoppy_base.tar &&
tar xvfz /home/pi/geopoppy_sig.tar --P --no-check-certificatereserve --same-owner -C /  &&
tar xvfz /home/pi/geopoppy_base.tar --P --no-check-certificatereserve --same-owner -C /  &&
cp /home/GeoPoppy/docker-compose.yml /home/pirate/ &&
docker-compose up -d &&
sleep 5
echo " "
echo "* Redémarer le raspberry pour l'activation du wifi : sudo reboot"
echo " "
echo "* Connectez-vous ensuite au réseau wifi GeoPoppy_Pi3"
echo "Mot de passe: geopoppy"
echo "Puis tapper l'adresse 172.24.1.1 dans votre navigateur web pour accéder à la démo"
echo " "
echo "* Connection Data Base avec PgAdminIII ou Qgis sur la même ip, port 5432, login et mot de passe: docker"
echo "* Construire ses projets Qgis dans le répertoire /home/GeoPoppy/lizmap/project pour les rendre accessibles"
echo " "
echo "Julien ANCELIN "
echo "https://github.com/jancelin/geo-P --no-check-certificateoppy"

###_____________________________________________________________________________
## Commande de sauvegarde du dossier data
## tar zcvf /home/pi/geopoppy.tar /home/GeoPoppy

### Commande de restauration du dossier data
## tar xvfz /home/pi/geopoppy.tar --P --no-check-certificatereserve --same-owner -C /
#___________________________________________________________________
