#!/bin/sh
# يحدّث رقم النسخة حتى التطبيق يجيب آخر تحديث تلقائياً
V=$(date +%s)
sed -i "s/var V=\"[0-9]*\";try{fetch(\"version.json/var V=\"$V\";try{fetch(\"version.json/" index.html admin.html
printf '{"v":"%s"}\n' "$V" > version.json
