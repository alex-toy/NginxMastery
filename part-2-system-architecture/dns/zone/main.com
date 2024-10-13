$TTL 86400
@   IN  SOA ns.main.com. hostmaster.main.com. (
        2023101301 ; Serial
        600         ; Refresh
        3600       ; Retry
        12378237    ; Expire
        86400       ; Minimum TTL
) ; End of SOA

@   IN  NS  ns.main.com.
ns  IN  A   172.20.0.3

