$TTL 3h
@   IN  SOA ns.alexeisite.com. admin.alexeisite.com. (
        2023102002 ; Serial
        7200        ; Refresh
        3600        ; Retry
        1209600     ; Expire
        86400       ; Minimum TTL
)
@   IN  NS  ns.alexeisite.com.
ns  IN  A   127.0.0.1
@   IN  A   127.0.0.1
www IN  A   127.0.0.1
