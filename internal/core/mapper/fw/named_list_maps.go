package fw

import "github.com/infobloxopen/terraform-provider-infoblox/internal/core"

// NamedListUDDIFieldMap maps infoblox model fields to UDDI struct fields
var NamedListUDDIFieldMap = map[string]string{
	"UDDI.ConfidenceLevel": "ConfidenceLevel",
	"UDDI.Description":     "Description",
	"UDDI.Items":           "Items",
	"UDDI.ItemsDescribed":  "ItemsDescribed",
	"UDDI.Name":            "Name",
	"UDDI.Policies":        "Policies",
	"UDDI.Tags":            "Tags",
	"UDDI.ThreatLevel":     "ThreatLevel",
	"UDDI.Type":            "Type",
}

// NamedListFilterFieldMap maps infoblox filter keys to backend-specific API filter field names.
// Only fields the FW API actually accepts in _filter are listed here: type, items, items_described.
var NamedListFilterFieldMap = map[core.BackendType]map[string]string{
	core.BackendUDDI: {
		"uddi.items":           "items",
		"uddi.items_described": "items_described",
		"uddi.type":            "type",
	},
}
