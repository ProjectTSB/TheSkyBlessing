#> world_manager:gimmick/teleporter/tp/move
#
#
#
# @within function world_manager:gimmick/teleporter/tp/

# TP先へ移動
    data modify entity @s Pos set from storage world_manager:gimmick/teleporter TargetPos
# TP先テレポーターが存在しない場合設置する
    execute positioned as @s unless entity @e[type=marker,tag=Teleporter,distance=..0.5,limit=1] run summon marker ~ ~ ~ {Tags:["Teleporter","Object","Uninterferable"]}
# TP先テレポーターの最終TP元を設定する
    execute positioned as @s as @e[type=marker,tag=Teleporter,distance=..0.5,limit=1] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LatestFromTPPos set from entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] Pos
# プレイヤーを飛ばす
    execute positioned as @s run tp @p[tag=this] ~ ~ ~
    execute positioned as @s run function world_manager:gimmick/teleporter/vfx/teleport/to
# 汎用entityを戻す
    tp @s 0.0 0.0 0.0