#> asset_manager:mob/set_tag
#
#
#
# @within function asset_manager:mob/set_data

# Friend
    execute if data storage asset:mob {Type:"Friend"} run tag @s add Friend
# Enemy
    execute if data storage asset:mob {Type:"Enemy"} run tag @s add Enemy

    execute if data storage asset:mob {Type:"Enemy.Boss"} run tag @s add Enemy
    execute if data storage asset:mob {Type:"Enemy.Boss"} run tag @s add Enemy.Boss
# Projectile
    execute if data storage asset:mob {Type:"Projectile"} run tag @s add Projectile
# Npc
    execute if data storage asset:mob {Type:"Npc"} run tag @s add Npc
# Object
    execute if data storage asset:mob {Type:"Object"} run tag @s add Object

# Uninterferable
    execute if data storage asset:mob {Interferable:false} run tag @s add Uninterferable