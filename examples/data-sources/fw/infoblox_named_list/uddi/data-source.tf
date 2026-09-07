// Retrieve Named Lists using tag filters
data "infoblox_named_list" "get_named_list_using_tag_filters" {
  tag_filters = {
    env = "production"
  }
}

// Retrieve all Named Lists
data "infoblox_named_list" "get_all_named_lists" {}
