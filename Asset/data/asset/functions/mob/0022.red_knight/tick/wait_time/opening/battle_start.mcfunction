#> asset:mob/0022.red_knight/tick/wait_time/opening/battle_start
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/opening/tick

# タグ調整
    tag @s remove M.Opening

# フェイズ加算
    scoreboard players add @s M.Phase 1

# 無敵とNoAI解除
    data modify entity @s Invulnerable set value 0b
    data modify entity @s NoAI set value 0b

# リセット
    function asset:mob/0022.red_knight/tick/reset

# 初手行動はトリプルダッシュ
    tag @s add M.SkillReady
    tag @s add M.InAction
    tag @s add M.DashTriple