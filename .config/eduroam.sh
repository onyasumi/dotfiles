#!/bin/bash

read -sp "Enter your password for eduroam: " passwd

nmcli con add \
  type wifi \
  con-name "eduroam" \
  ifname "wlp3s0" \
  ssid "eduroam" \
  wifi-sec.key-mgmt "wpa-eap" \
  802-1x.identity "f5tao@uwaterloo.ca" \
  802-1x.password $passwd \
  802-1x.system-ca-certs "yes" \
  802-1x.domain-suffix-match "uwaterloo.ca" \
  802-1x.eap "peap" \
  802-1x.phase2-auth "mschapv2"
  
nmcli connection up eduroam
