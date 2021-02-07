#デバッグキル
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Debug_Kill}}}] at @s run function useful_tools:items/debug_kill
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Debug_Kill}}}] at @s run function useful_tools:items/debug_kill

#EXPゼロ
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Exp_Zero}}}] at @s run function useful_tools:items/exp_zero
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Exp_Zero}}}] at @s run function useful_tools:items/exp_zero

#ヘルスリストア
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Health_Restore}}}] at @s run function useful_tools:items/health_restore
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Health_Restore}}}] at @s run function useful_tools:items/health_restore

#バニッシュ
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Banish}}}] at @s run function useful_tools:items/banish
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Banish}}}] at @s run function useful_tools:items/banish

#インスタントプラットフォーム
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Instant_Platform}}}] at @s run function useful_tools:items/instant_platform
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Instant_Platform}}}] at @s run function useful_tools:items/instant_platform

#スーパーテレポート
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Super_Teleport}}}] at @s run function useful_tools:items/super_teleport
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Super_Teleport}}}] at @s run function useful_tools:items/super_teleport

#ゲームモード切り替え
execute as @e[type=potion,nbt={Potion:{tag:{ItemName:Switch_Gamemode}}}] at @s run function useful_tools:items/switch_gamemode
execute as @e[type=potion,nbt={Item:{tag:{ItemName:Switch_Gamemode}}}] at @s run function useful_tools:items/switch_gamemode
execute as @e[type=area_effect_cloud,tag=U.Tools_Creative,nbt={Age:1}] at @s run function useful_tools:to_creative
execute as @e[type=area_effect_cloud,tag=U.Tools_Survival,nbt={Age:1}] at @s run function useful_tools:to_survival