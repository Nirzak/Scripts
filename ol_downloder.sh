###########################
# Author: Nirjas Jakilim
# Motive: Fetching Oracle University Guide Pages"
###########################

i=1 # Staring with page 1
while [ $i -le 300 ] # run the loop till the number of pages
do
curl -H 'authority: learning.oracle.com' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.80 Safari/537.36' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'accept: image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: no-cors' \
  -H 'sec-fetch-dest: image' \
  -H 'referer: <insert referer url here>' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: <insert cookie>' \
  https://learning.oracle.com/secure_content_v2/ohr/media/136999865/V1/D1101679GC10_sg2/files/mobile/$i.jpg -o $i.jpg --silent
i=`expr $i + 1`
done

echo "Building PDF"
img2pdf $(find . -iname '*.jpg' | sort -V) --pagesize A4 -o ../document.pdf
echo "All Done!"
