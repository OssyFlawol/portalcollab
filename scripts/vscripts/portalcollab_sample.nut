// New PortalCollab functions
// ============================ //
//       Player Functions       //
// ============================ //
//
// void SuppressCrosshair( bool ) // Hides/Unhides the player's crosshair.
// void EquipSuit() // Equips the player with the HEV Suit.
// void RemoveSuit() // Removes the player's HEV Suit.
// entity GetPortalgun() // Gets the player's portalgun, will return null if there is none.
//
// ============================ //
//     Portalgun Functions      //
// ============================ //
//
// void SetCanFirePortal1( bool ) // Sets if the portalgun can fire the primary portal.
// void SetCanFirePortal2( bool ) // Sets if the portalgun can fire the secondary portal.
// void SetLinkageGroupID( int )  // Sets the portalgun's Linkage ID.
// bool CanFirePortal1() // Returns true if the portalgun can fire portal 1.
// bool CanFirePortal2() // Returns true if the portalgun can fire portal 2.
// entity GetPortal1() // Gets a primary portal that is the same linkage id as the portalgun.
// entity GetPortal2() // Gets a secondary portal that is the same linkage id as the portalgun.
//
// ============================ //
// 		Global Functions		//
// ============================ //
// These functions don't require a local variable:
//
// entity ToPortalPlayer( entity ) // Casts an entity to a player. Will return null if the entity is not a player.

// Feel free to give function ideas in #suggestions

function SetPortalgunFire1( value )
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	player.Portalgun_SetCanFirePortal1( value );
}

function SetPortalgunFire2( value )
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	player.Portalgun_SetCanFirePortal2( value );	
}

function SuppressCrosshair( value )
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	player.SuppressCrosshair( value );	
}

function SetLinkageGroupID( value )
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	player.Portalgun_SetLinkageGroupID( value );	
}

function SomePortalgunFunction()
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	local portalgun = player.GetPortalgun();
	
	if( portalgun == null )
		return;

	// NOTE: This will only set the color for the worldmodel, not viewmodel.
	portalgun.SetRenderColorR( 255 );
	portalgun.SetRenderColorG( 0 );
	portalgun.SetRenderColorB( 0 );
	
}

SuppressCrosshair( false );
SetPortalgunFire1( true );
SetPortalgunFire2( true );
SetLinkageGroupID( 3 );
SomePortalgunFunction();