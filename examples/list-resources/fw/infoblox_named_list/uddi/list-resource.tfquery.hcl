// List Named Lists using tag filters
list "infoblox_named_list" "list_named_lists_using_tag_filters" {
  provider = infoblox
  config {
    tag_filters = {
      env = "production"
    }
  }
}

// List all Named Lists with resource details
list "infoblox_named_list" "list_all_named_lists" {
  provider         = infoblox
  include_resource = true
}
