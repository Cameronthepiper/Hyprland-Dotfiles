#!/usr/bin/env sh

# Dependencies: bluez, bluez-utils
menu() {
    echo "󰂯 Toggle Power"
    echo "󰂱 Devices"
    echo "󰂲 Scan"
    echo "󰂲 Restart Bluetooth"
    echo "󰂲 Quit"
}

choice=$(menu | rofi -dmenu -i -p "Bluetooth")

case "$choice" in
    "󰂯 Toggle Power")
        bluetoothctl power toggle
        ;;
    "󰂱 Devices")
        bluetoothctl devices | rofi -dmenu -i -p "Devices" | {
            read -r mac name
            [ -n "$mac" ] && bluetoothctl connect "$mac"
        }
        ;;
    "󰂲 Scan")
        bluetoothctl scan on &
        sleep 5
        pkill -f "bluetoothctl scan on"
        ;;
    "󰂲 Restart Bluetooth")
        systemctl restart bluetooth.service
        ;;
    "󰂲 Quit")
        exit 0
        ;;
esac
