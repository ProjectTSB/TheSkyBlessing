#> asset:mob/0022.red_knight/tick/skills/2.slashcombo/10.addtion_attack
#
# 行動後、突然ダッシュに移行
#
# @within function asset:mob/0022.red_knight/tick/skills/2.slashcombo/1.tick

# タグのリセット
    tag @s remove M.SkillCombo
    tag @s remove M.FacingLock

# スコアのリセット
    scoreboard players set @s M.Tick -5
    scoreboard players reset @s M.AdditionCount

# 即座にダッシュ斬りに移行
    tag @s add M.InAction
    tag @s add M.SkillSlash