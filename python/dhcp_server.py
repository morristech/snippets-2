# https://gist.github.com/yosshy/4551b1fe3d9af63b02d4

from scapy.all import DHCP_am
from scapy.base_classes import Net

dhcp_server = DHCP_am(iface='eth1', domain='example.com',
                      pool=Net('192.168.10.0/24'),
                      network='192.168.10.0/24',
                      gw='192.168.10.254',
                      renewal_time=600, lease_time=3600)
dhcp_server()
