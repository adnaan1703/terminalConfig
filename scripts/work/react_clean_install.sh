source activate py2
python --version
echo "removing package-lock"
rm package-lock.json
echo "removing lib dir"
rm -rf /lib
echo "removing node modules"
rm -rf node_modules
echo "starting npm install"
npm i
echo "clean installation is completed"
afplay /System/Library/Sounds/Glass.aiff
source deactivate
python --version
say done
osascript -e 'display notification "clean installation is completed" with title "fk react build tool"'
