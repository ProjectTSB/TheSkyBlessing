#> asset:mob/0022.red_knight/tick/wait_time/phase2_transition/4.restart
#
# 再始動、次の行動が確定している
#
# @within function asset:mob/0022.red_knight/tick/wait_time/phase2_transition/1.tick

# リセット
    function asset:mob/0022.red_knight/tick/reset

# 初手行動はトリプルダッシュからの必殺技で確定。衝撃波攻撃のカウントをあらかじめ下に下げておく
    tag @s add M.SkillReady
    tag @s add M.InAction
    tag @s add M.DashTriple
    scoreboard players set @s M.UltimateCount 9
    scoreboard players set @s M.WaveCount -1