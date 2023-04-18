# 정방향 조회 도메인 만들기 
# Add-DnsServerPrimaryZone -Name "vclass.reca3" -ZoneFile "vclass.reca3.dns" 

# 역방향 조회 도메인 만들기 
Add-DnsServerPrimaryZone -NetworkID 172.16.1.0/24 -ZoneFile "1.16.172.in-addr.arpa.dns"

# DNS 포워딩 
# Add-DnsServerForwarder -IPAddress 172.16.1.1 -PassThru

# Domain Controller Record
Add-DnsServerResourceRecordA -Name "vcsa" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.10"
Add-DnsServerResourceRecordPtr -Name "10" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "vcsa.vclass.reca3"

Add-DnsServerResourceRecordA -Name "esxi-01" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.11"
Add-DnsServerResourceRecordPtr -Name "11" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "esxi-01.vclass.reca3"

Add-DnsServerResourceRecordA -Name "esxi-02" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.12"
Add-DnsServerResourceRecordPtr -Name "12" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "esxi-02.vclass.reca3"

Add-DnsServerResourceRecordA -Name "esxi-03" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.13"
Add-DnsServerResourceRecordPtr -Name "13" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "esxi-03.vclass.reca3"

Add-DnsServerResourceRecordA -Name "esxi-04" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.14"
Add-DnsServerResourceRecordPtr -Name "14" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "esxi-04.vclass.reca3"

Add-DnsServerResourceRecordA -Name "esxi-05" -ZoneName "vclass.reca3" -IPv4Address "172.16.1.15"
Add-DnsServerResourceRecordPtr -Name "15" -ZoneName "1.16.172.in-addr.arpa" -PtrDomainName "esxi-05.vclass.reca3"
