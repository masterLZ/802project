from ctypes import *

dll = WinDLL('IPSerial.dll')
server_ip='192.168.129.77'
print(dll.nsio_init())

prot_id = dll.nsio_open('192.168.129.77',1,1000)
print(prot_id)
print(dll.nsio_ioctl(prot_id,9600,0x03))
