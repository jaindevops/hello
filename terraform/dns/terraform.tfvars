region = "global"
dns_zones = {
  "example.com" = {
    records = [
      {
        "type" = "A",
        "name" = "example.com.",
        "ttl"  = 300,
        "records" = [
          "1.2.3.4"
        ]
      },
      # TEST-11111 - Test CNAME record
      {
        "type" = "CNAME",
        "name" = "www.example.com.",
        "ttl"  = 300,
        "records" = [
          "example.com."
        ]
      },
      {
        "type" = "TXT",
        "name" = "example.com.",
        "ttl"  = 60,
        "records" = [
          "v=spf1 include:mail.example.com ~all"
        ]
      }
    ]
  }
}
