#> asset:mob/0236.ksitigarbha/death/2.1.curse
#
# お地蔵さんの祟り
#
# @input at player
#
# @within function asset:mob/0236.ksitigarbha/death/2.death

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはお地蔵さんに祟られた。","with":[{"selector":"@s"}]}]']

# Killerがいた場合Killerとその周囲のFriendにデバフとダメージ
    execute as @e[type=!player,tag=Friend,distance=..5] run function lib:damage/
    execute as @a[gamemode=!creative,tag=Friend,distance=..5] run function lib:damage/
    effect give @e[type=!player,tag=Friend,distance=..5] poison 5 1
    effect give @a[gamemode=!creative,tag=Friend,distance=..5] poison 5 1
    effect give @e[type=!player,tag=Friend,distance=..5] slowness 10 3
    effect give @a[gamemode=!creative,tag=Friend,distance=..5] slowness 10 3
    function lib:damage/reset

# 音
    playsound entity.elder_guardian.curse hostile @a[gamemode=!creative,tag=Friend,distance=..5] ~ ~ ~ 1 1 1

# メッセージ
    execute as @e[gamemode=!creative,tag=Friend,distance=..5] run tellraw @s [{"translate": "%1$sはお地蔵さんを攻撃した罰が当たった。","with":[{"selector":"@s"}]}]
