/usr/local/McAfee/AntiMalware/VSControl stopoas
/usr/local/McAfee/AntiMalware/VSControl stop
/Library/McAfee/agent/scripts/ma stop
echo '[✓] Kill MacAfee Process'

sudo launchctl unload /Library/LaunchDaemons/com.netskope.stagentsvc.plist
echo '[✓] Stopped Relaunching of Netskope'
sudo ps aux | grep Netskope | grep -v grep | awk '{ print "kill -9", $2 }' | sh
echo '[✓] Kill Netskope Process'

# Keeping these in case I want to uninstall them
#sudo rm -rf /Applications/Remove\ Netskope\ Client.app
#echo '[✓] Removed Remove Netskope Client.app'

#sudo rm -rf /Library/Application\ Support/Netskope
#echo '[✓] Removed Agent of Netskope Client.app'

#echo 'Successfully uninstalled.'
