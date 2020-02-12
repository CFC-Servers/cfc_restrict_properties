hook.Remove( "CanProperty", "CFC_RestrictPersist" )

hook.Add( "CanProperty", "CFC_RestrictPersist", function( ply, property, ent )
    if not ply:IsAdmin() and property == "persist" then return false end
end )
