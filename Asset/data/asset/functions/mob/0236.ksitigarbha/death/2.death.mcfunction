#> asset:mob/0236.ksitigarbha/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0236.ksitigarbha/death/1.trigger

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.DeathMessage set value ['[{"translate": "%1$sはお地蔵さんに祟られた。","with":[{"selector":"@s"}]}]']

# Killerがいた場合Killerとその周囲のFriendにデバフとダメージ
    execute at @a[tag=Killer] as @e[type=!player,tag=Friend,distance=..5] run function lib:damage/
    execute at @a[tag=Killer] as @e[gamemode=!creative,tag=Friend,distance=..5] run function lib:damage/
    execute at @a[tag=Killer] run effect give @e[tag=Friend,distance=..5] blindness 10 1
    execute at @a[tag=Killer] run effect give @e[tag=Friend,distance=..5] slowness 10 3

# メッセージ
    execute at @a[tag=Killer] as @e[gamemode=!creative,tag=Friend,distance=..5] run tellraw @s [{"translate": "%1$sはお地蔵さんを攻撃した罰が当たった。","with":[{"selector":"@s"}]}]