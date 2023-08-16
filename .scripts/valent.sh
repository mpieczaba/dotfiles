#!/usr/bin/env bash

deviceid=$(
    gdbus introspect \
        --session \
        --dest ca.andyholmes.Valent \
        --object-path /ca/andyholmes/Valent/Device | awk 'FNR==2{print $2}'
)

gdbus call \
    --session \
    --dest ca.andyholmes.Valent \
    --object-path /ca/andyholmes/Valent/Device/$deviceid \
    --method org.freedesktop.DBus.Properties.Get ca.andyholmes.Valent.Device Name | awk -F "'" '{print $2}'
