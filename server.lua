RegisterCommand("giveweapon", function (source, args)
    local player = GetPlayerPed(args[1])
    local weapon = GetHashKey(args[2])
    local ammo = args[3]

    GiveWeaponToPed(player, weapon, ammo, false, false)  

end, Config.UseAce)

TriggerEvent('chat:addSuggestion', '/giveweapon', 'Give Weapon', {
    { name="PlayerID", help="ID of the Player" },
    { name="weapon_name", help="Example: weapon_pistol" },
    { name="Ammo", help="Ammo Amount" } 
})

RegisterCommand("removeweapon", function (source, args)
    local player = GetPlayerPed(args[1])
    local weapon = GetHashKey(args[2])
    
    RemoveWeaponFromPed(player, weapon)
end, Config.UseAce)

TriggerEvent('chat:addSuggestion', '/removeweapon', 'Remove Weapon', {
    { name="PlayerID", help="ID of the Player" },
    { name="weapon_name", help="Example: weapon_pistol" }
})



