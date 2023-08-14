//=========== (C) Copyright 1999 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// No spaces in event names, max length 32
// All strings are case sensitive
//
// valid data key types are:
//   string : a zero terminated string
//   bool   : unsigned int, 1 bit
//   byte   : unsigned int, 8 bit
//   short  : signed int, 16 bit
//   long   : signed int, 32 bit
//   float  : float, 32 bit
//   local  : any data, but not networked to clients
//
// following key names are reserved:
//   local      : if set to 1, event is not networked to clients
//   unreliable : networked, but unreliable
//   suppress   : never fire this event
//   time	: firing server time
//   eventid	: holds the event ID

"ModEvents"
{
	"portal_player_touchedground"	// player landed
	{
		"userid"	"short"		// user ID on server
	}
	
	"portal_player_portaled"		// player traveled through a portal
	{
		"userid"	"short"		// user ID on server
		"portal2"	"bool"		// false for portal1 (blue)
	}
	"turret_hit_turret"
	{
	}
	"security_camera_detached"
	{
	}
	"challenge_map_complete"
	{
		"numbronze"	"short"
		"numsilver"	"short"
		"numgold"	"short"
	}
	"advanced_map_complete"
	{
		"numadvanced"	"short"
	}
	"dinosaur_signal_found"
	{
		"id"	"short"
	}
}

