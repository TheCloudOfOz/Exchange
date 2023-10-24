# Ports
# SMTP    25/587    - TCP
# HTTP/S  80/443    - TCP
# IMAP    143/993   - TCP
# POP     110/995   - TCP
# DNS     53        - TCP/UDP
# LDAP    50636     - TCP

# External DNS Test
Resolve-DnsName ZZZ.onmicrosoft.com -Type MX -Server 1.1.1.1
# Internal DNS Test
Resolve-DnsName ZZZ.onmicrosoft.com -Type MX -Server 10.10.10.10

# External DNS Test
Resolve-DnsName ZZZ.onmicrosoft.com -Type TXT -Server 1.1.1.1
# Internal DNS Test
Resolve-DnsName ZZZ.onmicrosoft.com -Type TXT -Server 10.10.10.10

# Port Check
Test-NetConnection -Port 25 -ComputerName LON-EX1.adatum.com
