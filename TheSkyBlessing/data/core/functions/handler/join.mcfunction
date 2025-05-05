#> core:handler/join
#
#
#
# @within function
#   core:handler/first_join
#   core:handler/rejoin

# バージョンチェック
    function player_manager:version_check
# データパックチェック
    execute if data storage global {IsProduction:true} run function player_manager:notice_datapack_deficient/
# リソースパックチェック
    tellraw @s [{"translate":"リソースパックが導入されてない、または古いバージョンのリソースパックが導入されています。\n正しいリソースパックを確認の上、導入して下さい。(リソースパックバージョン: v1.0.b)","color":"red"}]
# 難易度チェック
    function player_manager:notice_difficulty
# ボーナスの更新
    function api:modifier/attack/base/update_bonus
    function api:modifier/defense/base/update_bonus
    function api:modifier/max_health/update_bonus
    function api:modifier/max_mp/update_bonus
# 攻略数の表示
    execute if data storage global {IsProduction:true} if entity @s[tag=TutorialEnded] run function player_manager:show_progress
