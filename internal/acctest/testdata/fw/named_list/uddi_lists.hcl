# NamedList — uddi list cases
case "basic" {
  backend        = "uddi"
  parallel       = true
  min_tf_version = "1.14.0"

  step {
    uddi {
      name            = "{{random}}"
      items_described = [{ item = "{{random2}}.com", description = "Example Domain" }]
      type            = "custom_list"
    }
  }

  step {
    query    = true
    provider = infoblox
    limit    = 5
  }

}

case "filters" {
  backend        = "uddi"
  parallel       = true
  min_tf_version = "1.14.0"

  step {
    uddi {
      name            = "{{random}}"
      items_described = [{ item = "{{random2}}.com", description = "Filtered Domain" }]
      type            = "custom_list"
    }
  }

  step {
    query    = true
    provider = infoblox
    limit    = 5
    filters = {
      "name" = "{{random}}"
    }
  }

}
