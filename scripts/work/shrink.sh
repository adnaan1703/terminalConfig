#!/usr/bin/env bash

echo "Shrinking drawable-xxxhdpi"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable-xxxhdpi/

echo "Shrinking drawable-xxhdpi"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable-xxhdpi/

echo "Shrinking drawable-xhdpi"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable-xhdpi/

echo "Shrinking drawable-hdpi"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable-hdpi/

echo "Shrinking drawable-mdpi"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable-mdpi/

echo "Shrinking drawable"
python ~/Downloads/trash/opt.py ~/Projects/flipkart/fk_android_app/flipkart_ecom_app/src/main/res/drawable/
