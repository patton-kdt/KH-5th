# 정방향 조회 도메인 만들기 
# Add-DnsServerPrimaryZone -Name "vclass.kh" -ZoneFile "vclass.kh.dns" 

# 역방향 조회 도메인 만들기 
Add-DnsServerPrimaryZone -NetworkID 200.200.200.0/24 -ZoneFile "200.200.200.in-addr.arpa.dns"

# DNS 포워딩 
# Add-DnsServerForwarder -IPAddress 203.248.252.2 -PassThru

# Domain Controller Record
Add-DnsServerResourceRecordA -Name "vcsa" -ZoneName "vclass.kh" -IPv4Address "200.200.200.251"
Add-DnsServerResourceRecordPtr -Name "251" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "vcsa.vclass.kh"

Add-DnsServerResourceRecordA -Name "khesxi01" -ZoneName "vclass.kh" -IPv4Address "200.200.200.246"
Add-DnsServerResourceRecordPtr -Name "246" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "khesxi01.vclass.kh"

Add-DnsServerResourceRecordA -Name "khesxi02" -ZoneName "vclass.kh" -IPv4Address "200.200.200.247"
Add-DnsServerResourceRecordPtr -Name "247" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "khesxi02.vclass.kh"

Add-DnsServerResourceRecordA -Name "khesxi03" -ZoneName "vclass.kh" -IPv4Address "200.200.200.248"
Add-DnsServerResourceRecordPtr -Name "248" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "khesxi03.vclass.kh"

Add-DnsServerResourceRecordA -Name "khesxi04" -ZoneName "vclass.kh" -IPv4Address "200.200.200.249"
Add-DnsServerResourceRecordPtr -Name "249" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "khesxi04.vclass.kh"

Add-DnsServerResourceRecordA -Name "khesxi05" -ZoneName "vclass.kh" -IPv4Address "200.200.200.250"
Add-DnsServerResourceRecordPtr -Name "250" -ZoneName "200.200.200.in-addr.arpa" -PtrDomainName "khesxi05.vclass.kh"
