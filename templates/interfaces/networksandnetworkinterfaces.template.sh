config

ip interface ether2 vlan 10
 description home
 mode static
 designation LAN
 ipv4 10.64.0.1 netmask 255.255.255.0

ip interface ether2 vlan 20
 description guest
 mode static
 designation LAN
 ipv4 10.127.255.254 netmask 255.255.255.128

ip interface ether2 vlan 30
 description IoT
 mode static
 designation LAN
 ipv4 10.30.30.1 netmask 255.255.255.0

ip interface ether1
 description wan
 mode dhcp
 designation WAN

ip interface ether2
 description lan
 mode static
 designation LAN
 ipv4 192.168.1.1 netmask 255.255.255.0

ip interface ether3 vlan 40
 description deadzone
 mode static
 designation LAN
 ipv4 192.168.40.1 netmask 255.255.255.0

ip interface ether3
 description lab
 mode static
 designation LAN

ip interface ether4
 description wan-pppoe
 mode 
 designation WAN
 
connection 1
 name wan1
 interface ether1
 type static
 gateway 192.168.88.1
 testType ICMP
 testAddress 8.8.8.8 8.8.4.4 www.google.co.za
 testICMPtimeout 800
 testICMPpackets 3
 testICMPinterval 100

networks
 family 10.64.0.0/24
 guest 10.127.255.0/25
 iot 10.30.30.0/24
 lab 192.168.40.0/24
 home 192.168.1.0/24
 scanning-enabled true
 
! end of configuration
