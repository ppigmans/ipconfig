PS3="Hoe zit u op het netwerk aangesloten, Via (1-3):" 
select name in Kabel WIFI Afsluiten
do 
 	break 
done 

if [ "$name" = "Kabel" ]; then
echo
echo "U zit aangesloten via $name"
echo
echo "Uw ip adress is"
echo
ipconfig=$( ifconfig eth1 | head -n 2 | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${ipconfig}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1
fi

if [ "$name" = "Wifi" ]; then
echo
echo "U zit aangesloten via $name"
echo
echo "Uw ip adress is"
echo
ipconfig=$( ifconfig wlan1 | head -n 2 | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${ipconfig}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1
fi

if [ "$name" = "Afsluiten" ]; then
echo
echo "Druk op enter om af te sluiten..."
read enter
exit 1
fi
