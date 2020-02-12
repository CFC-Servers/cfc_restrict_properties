--/\-- Requiring / Including



--/\-- Planning

--/\-- Variables

--/\-- Functions


--/\-- Hooks
hook.Remove( "CanProperty", "CFC_RestrictPersist" )

hook.Add( "CanProperty", "persist_property", function( ply, property, ent )
	if ( !ply:IsAdmin() && property == "persist" ) then return false else return true end
end )
