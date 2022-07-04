#> player_manager:set_team
#
#
#
# @within function core:tick/player/

#> Temp
# @private
    #declare score_holder $Health
    #declare score_holder $MaxHealth

# 体力コピー
    scoreboard players operation $Health Temporary = @s Health
    scoreboard players operation $Health Temporary *= $1000 Const
# 最大体力取得
    execute store result score $MaxHealth Temporary run attribute @s generic.max_health get 10
# 割合を計算する
    scoreboard players operation $Health Temporary /= $MaxHealth Temporary
# 割合をもとにチーム振り分け
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.None] run team join None.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.None] run team join None.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.None] run team join None.HighHP
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.Flora] run team join Flora.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.Flora] run team join Flora.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.Flora] run team join Flora.HighHP
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.Urban] run team join Urban.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.Urban] run team join Urban.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.Urban] run team join Urban.HighHP
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.Nyaptov] run team join Nyaptov.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.Nyaptov] run team join Nyaptov.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.Nyaptov] run team join Nyaptov.HighHP
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.Wi-ki] run team join Wi-ki.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.Wi-ki] run team join Wi-ki.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.Wi-ki] run team join Wi-ki.HighHP
    execute if score $Health Temporary matches 00..34 if entity @s[tag=Believe.Rumor] run team join Rumor.LowHP
    execute if score $Health Temporary matches 35..79 if entity @s[tag=Believe.Rumor] run team join Rumor.MedHP
    execute if score $Health Temporary matches 80..100 if entity @s[tag=Believe.Rumor] run team join Rumor.HighHP
# リセット
    scoreboard players reset $Health Temporary
    scoreboard players reset $MaxHealth Temporary