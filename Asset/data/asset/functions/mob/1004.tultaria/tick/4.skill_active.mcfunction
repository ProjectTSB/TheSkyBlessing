#> asset:mob/1004.tultaria/tick/4.skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1004.tultaria/tick/**

# 近接
    execute if entity @s[tag=RW.SkillMelee] run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick
# メテオレイン
    execute if entity @s[tag=RW.SkillMeteor] run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick
# 座標
    execute if entity @s[tag=RW.SkillCoordinate] run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick
# 座標外し
    execute if entity @s[tag=RW.SkillOffCoordinate] run function asset:mob/1004.tultaria/tick/skill/4.off_coordinate_attack/1.off_coordinate_attack
# 弾攻撃
    execute if entity @s[tag=RW.SkillBall] run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.tick
# 流星
    execute if entity @s[tag=RW.SkillStarfury] run function asset:mob/1004.tultaria/tick/skill/6.starfury_attack/1.tick
# 召喚
    execute if entity @s[tag=RW.SkillSummon] run function asset:mob/1004.tultaria/tick/skill/7.star_summon/1.star_summon
# ショット
    execute if entity @s[tag=RW.SkillLaser] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick

# 行動選択前スキル: 追従射撃
    execute if entity @s[tag=RW.MiniSkillChase] run function asset:mob/1004.tultaria/tick/skill/phase3/1.chase_and_shot/1.tick

# 行動選択前スキル: 弾幕
    execute if entity @s[tag=RW.MiniSkillBulletHell] run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/1.tick

# 行動選択前スキル: 拡散ショット
    execute if entity @s[tag=RW.MiniSkillShot] run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick

# 行動選択前スキル: 拡散ショット
    execute if entity @s[tag=RW.MiniSkillLaser] run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick