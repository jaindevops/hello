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
      # JIRA: AB-99999
      {
        "type"    = "A",
        "name"    = "hello.example.com",
        "ttl"     = 300,
        "records" = [
          "198.168.1.2"
        ]
      },
      # JIRA: NEW-99999
      {
        "type"    = "A",
        "name"    = "a.example.com.",
        "ttl"     = 300,
        "records" = [
          "123"
        ]
      },
      # JIRA: NEW-99934
      {
        "type"    = "A",
        "name"    = "hello.example.com",
        "ttl"     = 300,
        "records" = [
          "198.168.1.2"
        ]
      },
    ]
  }
}
