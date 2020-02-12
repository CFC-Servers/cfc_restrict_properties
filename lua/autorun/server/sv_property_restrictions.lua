--/\-- Requiring / Including



--/\-- Planning

--/\-- Variables

--/\-- Functions


--/\-- Hooks
hook.Remove( "CanProperty", "CFC_RestrictPersist" )

hook.Add( "CanProperty", "persist_property", function( ply, property, ent )
    if not ply:IsAdmin() and property == "persist" then return false end
end )
