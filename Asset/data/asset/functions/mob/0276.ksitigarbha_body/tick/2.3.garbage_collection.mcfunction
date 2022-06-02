#> asset:mob/0276.ksitigarbha_body/tick/2.3.garbage_collection
#
# キル時間を迎えたmobをキル
#
# @within function asset:mob/0276.ksitigarbha_body/tick/2.tick

#> prv
# @private
    #declare score_holder $7O.Gametime

# 死亡時間を迎えたお地蔵さん見た目をkill
    execute store result score $7O.Gametime Temporary run time query gametime
    execute if score $7O.Gametime Temporary >= @s 7O.SurcideTime run kill @s