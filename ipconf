echo "Uw ip adress is"
echo
ipconfig=$( ifconfig eth1 | head -n 2 | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${ipconfig}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1

