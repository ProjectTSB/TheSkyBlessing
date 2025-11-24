#> core:tick/player/post
#
# tickの基本的な処理を終えた後に実行されるプレイヤーのtick処理
#
# @within function core:tick/

#> this
# @within *
#   core:tick/player/post
#   player_manager:grave/build/*
    #declare tag this

# thisタグ付与
    tag @s add this

# 死亡処理チェック
    execute if entity @s[scores={DeathEvent=1..}] run function core:handler/death

# プレイヤーの所持するアイテムのMetaチェック
    function core:tick/check_item_meta/inventory

# プレイヤーの体力の変更Queueの消化
    execute if entity @s[predicate=lib:has_health_modify_score] run function lib:score_to_health_wrapper/proc
# MPを経験値バーに同期
    function player_manager:mp/viewer/check_xpbar
# actionbar表示
    function player_manager:actionbar/

# リセット
    execute if entity @s[scores={Sneak=1..},predicate=!lib:is_sneaking] run function asset_manager:artifact/triggers/sneak/reset
    scoreboard players reset @s[scores={Sneak=1..},predicate=!lib:is_sneaking] Sneak
    tag @s remove FlyingElytra
    tag @s remove this
