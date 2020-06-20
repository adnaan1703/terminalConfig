#!/usr/bin/env bash
echo '\n\n >>>>>>>>> directing to the dir'
cd /Users/adnaan.ahmed/Projects/flipkart/ts-rex/

echo '\n\n >>>>>>>>> cleaning rome models'
rm -rf node_modules/rome-models/ 

echo '\n \n >>>>>>>>> deploying'
sh scripts/deploy.sh

echo '\n \n >>>>>>>>> checking lint errors'
tslint 'src/**/*.{ts,tsx}'

echo '\n \n >>>>>>>>> checking the bundle'
react-native bundle --platform android --dev false --entry-file index.js --bundle-output adnaan_wow

echo '\n \n >>>>>>>>> cleaning bundles'
rm adnaan_wow
rm adnaan_wow.meta