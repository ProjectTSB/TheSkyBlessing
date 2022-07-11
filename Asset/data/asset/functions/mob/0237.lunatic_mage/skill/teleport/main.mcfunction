#> asset:mob/0237.lunatic_mage/skill/teleport/main
#
# 自身の出現位置を中心として拡散テレポート
#
# @within function asset:mob/0237.lunatic_mage/tick/5.reset

# ワープ中はモデル外して透明化
    item replace entity @s armor.head with minecraft:air

# 透明化時間設定
    scoreboard players set @s 6L.Invisible 5

# パーティクル
    function asset:mob/0237.lunatic_mage/skill/teleport/vfx

# 実行座標を中心として-x方向に1、+x方向に1、-y方向に0.2、+y方向に0.8、-z方向に1、+z方向に1の立方体内のランダムな位置にmarkerを移動
    data modify storage lib: Argument.Bounds set value [[9d,9d],[0.0d,0.0d],[9d,9d]]
    execute at @e[type=marker,tag=6L.SpawnPoint,distance=..100,sort=nearest,limit=1] run function lib:spread_entity/

# パーティクル
    execute at @s run function asset:mob/0237.lunatic_mage/skill/teleport/vfx

# 色々リセット
    scoreboard players set @s 6L.Tick -10
    scoreboard players reset @s 6L.TeleportCount