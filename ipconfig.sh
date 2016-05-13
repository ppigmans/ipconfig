PS3="Hoe zit uw aangesloten op het netwerk (1-3):" 
select name in Bekabeld Wifi afsluiten
do 
 	break 
done 
echo "You picked $name."

if [ "$name" = "Bekabeld" ]; then
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
echo "Uw ip adress is"
echo
ipconfig=$( ifconfig wlan1 | head -n 2 | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${ipconfig}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1
fi
