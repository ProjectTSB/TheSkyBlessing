#> player_manager:manage_tag/
#
# プレイヤーのタグ管理を行う
#
# @within function core:tick/player/pre

# PlayerShouldInvulnerable
    tag @s[tag=PlayerShouldInvulnerable] remove PlayerShouldInvulnerable
    tag @s[gamemode=!adventure,gamemode=!survival] add PlayerShouldInvulnerable

# PlayerNearbyEnemy
    tag @s[tag=PlayerNearbyEnemy] remove PlayerNearbyEnemy
    execute if entity @e[type=#lib:living_without_player,tag=Enemy,distance=..15] run tag @s add PlayerNearbyEnemy
    execute if entity @s[tag=!PlayerNearbyEnemy] if entity @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..100] run tag @s add PlayerNearbyEnemy
