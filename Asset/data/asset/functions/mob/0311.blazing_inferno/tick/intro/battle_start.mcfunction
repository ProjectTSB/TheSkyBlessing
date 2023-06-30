#> asset:mob/0311.blazing_inferno/tick/intro/battle_start
#
# これを実行すると戦闘モードになる
#
# @within function asset:mob/0311.blazing_inferno/tick/intro/

# タグ付与
    tag @s add 8N.IntroFinish
    tag @s add 8N.RailMove

# スコアリセット
    scoreboard players reset @s 8N.Tick

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/teleport_vfx

# テレポート
    execute at @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^15

# テレポート演出
    execute at @s run function asset:mob/0311.blazing_inferno/tick/teleport_vfx
