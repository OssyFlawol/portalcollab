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
//       Portal Functions       //
// ============================ //
//
// void SetPortalPlacedFunction( string ) // When a portal is placed, the function you enter will be called. (Sets the ScriptPortalPlacedFunction keyvalue to the value you enter)
// entity GetLinkedPortal() // Returns this portal's linked portal.
// bool IsActive() // Returns true if this portal is active.
// bool IsActivedAndLinked() // Returns true if this portal is active and has a linked portal.
//
// ============================ //
//       Global Functions       //
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
	
	local portalgun = player.GetPortalgun()
	
	if( portalgun == null )
		return;
	
	portalgun.SetCanFirePortal1( value );
}

function SetPortalgunFire2( value )
{
	local player = Entities.FindByClassname(null, "player");
	
	if( player == null )
		return;
	
	local portalgun = player.GetPortalgun()
	
	if( portalgun == null )
		return;
	
	portalgun.SetCanFirePortal2( value );	
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
	
	local portalgun = player.GetPortalgun()
	
	if( portalgun == null )
		return;
	
	portalgun.SetLinkageGroupID( value );	
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
	
	local portal2 = portalgun.GetPortal2();
	
	if ( portal2 != null )
	{
		//portal2.Destroy();
		
		portal2.SetPortalPlacedFunction("PortalPlaced");		
	}	
}

// Toggle crosshair each time an orange portal is placed.

local shouldsupress = true;
function PortalPlaced()
{
	SuppressCrosshair( shouldsupress );
	shouldsupress = !shouldsupress;
}

SetPortalgunFire1( false );
SetPortalgunFire2( true );
SetLinkageGroupID( 0 );
SomePortalgunFunction();