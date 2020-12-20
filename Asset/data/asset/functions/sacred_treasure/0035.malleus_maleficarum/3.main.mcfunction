#> asset:sacred_treasure/0035.malleus_maleficarum/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0035.malleus_maleficarum/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    say test: 0035.malleus_maleficarum

# 命中位置特定用のアーマースタンド召喚
summon armor_stand 10000 0 10000 {Invisible:1b,Tags:[MalleusMaleficarumInit]}

# エンダーパール召喚
execute positioned 0 0 0 rotated as @s run summon ender_pearl ^ ^ ^1 {Tags:[MalleusMaleficarumIndicator,MalleusMaleficarumInit]}

# エンダーパールのMotion変更
execute positioned 0 0 0 as @e[type=ender_pearl,tag=MalleusMaleficarumInit,distance=..1] run data modify entity @s Motion set from entity @s Pos

# Ownerセット
execute positioned 0 0 0 as @e[type=ender_pearl,tag=MalleusMaleficarumInit,distance=..1] positioned 10000 0 10000 run data modify entity @s Owner set from entity @e[type=armor_stand,tag=MalleusMaleficarumInit,distance=..1,limit=1]

# 命中したことを管理するscheduleをセット
schedule function asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit 1t replace

# 初期設定用タグ削除
execute positioned 10000 0 10000 run tag @e[type=armor_stand,tag=MalleusMaleficarumInit,distance=..1] remove MalleusMaleficarumInit
execute positioned as @s run tag @e[type=ender_pearl,tag=MalleusMaleficarumInit,distance=..2] remove MalleusMaleficarumInit