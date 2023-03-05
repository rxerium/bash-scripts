# ------------------------------------------------
#!/bin/bash
# This script will install Restore Photos for you
# Ref: https://github.com/Nutlope/restorePhotos
# ------------------------------------------------

echo "Script starting..."
git clone https://github.com/Nutlope/restorePhotos.git
cd restorePhotos
echo "What is your Replicate API key?"
# rename .example.env to .env
mv .example.env .env
read APIKEY
sed -i "s/REPLICATE_API_KEY=/REPLICATE_API_KEY=$APIKEY/g" .env
npm install
npm run dev
echo "Service running on http://$(hostname -I | awk '{print $1}'):3000"
echo "Script complete!"