When creating a radio for your level, make sure the id and name are not shared with any other radio. You can also have multiple radios in your map.
To avoid naming conflicts, you can name the radio after your map name, such as pcollab_00_ossilia_01.
Don't change someone else's radio ID without their knowledge because then they'd have to edit it in their map.
When shipping, the "found" value should be 0, don't forget to change it to 0 before shipping your level!

Examples:

// The first radio in pcollab_00_ossilia
"pcollab_00_ossilia_01" // Name
{
	"id"		"1" // Radio ID
	"found"		"0" // Found State
}

// The second radio in pcollab_00_ossilia
"pcollab_00_ossilia_02" // Name
{
	"id"		"2" // Radio ID
	"found"		"0" // Found State
}
