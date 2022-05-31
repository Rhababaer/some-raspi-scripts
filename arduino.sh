#!/bin/sh

BLUE='\033[1;33m'
NC='\033[0m'

echo  "${BLUE}(1/5) install Arduino IDE${NC}"
sudo apt install arduino

echo  "${BLUE}(2/5) get Arduino dark theme${NC}"
if [ ! -d "/usr/share/arduino/lib/theme_backup" ]
then
wget https://github.com/konrad91/OneDarkArduino/tree/master/theme

sudo mv /usr/share/arduino/lib/theme /usr/share/arduino/lib/theme_backup
sudo mv theme /usr/share/arduino/lib/
else
echo  "${BLUE}or not${NC}"
fi

echo  "${BLUE}(3/5) get cli interface${NC}"
if [ -d "~/bin/arduino-cli" ]
then
mkdir ~/bin
curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | BINDIR=~/bin sh
else
echo  "${BLUE}or not${NC}"
fi

echo  "${BLUE}(4/5) add esp8266 and esp32 to boards$ resources${NC}"
echo boardsmanager.additional.urls=http://arduino.esp8266.com/stable/package_esp8266com_index.json, https://dl.espressif.com/dl/package_esp32_index.json >> .arduino15/preferences.txt
arduino-cli core update-index
arduino-cli core install esp32:esp32 --additional-urls "https://raw.githubusercontent.com/espressif/arduino-esp32/gh-pages/package_esp32_index.json"
arduino-cli core install esp8266:esp8266 --additional-urls "http://arduino.esp8266.com/stable/package_esp8266com_index.json"

echo  "${BLUE}(5/5) install libraries for MAX31856, INA219 and MCP4725${NC}"
arduino-cli lib install "Adafruit MAX31856 library"
arduino-cli lib install "Adafruit INA219"
arduino-cli lib install "Adafruit MCP4725"
