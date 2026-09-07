// Create a custom Named List with items
resource "infoblox_named_list" "example" {
  uddi = {
    name        = "example-custom-list"
    type        = "custom_list"
    description = "Example custom named list"
    items_described = [
      {
        item        = "malicious-domain.example.com"
        description = "Known malicious domain"
      },
      {
        item        = "192.168.1.0/24"
        description = "Blocked IP range"
      },
    ]
    tags = {
      env = "production"
    }
  }
}
