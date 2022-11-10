#> asset:mob/0022.red_knight/remove/2.remove
#
#
#
# @within function asset:mob/0022.red_knight/remove/1.trigger

# アマスタのコアを削除、残る部分は勝手に消える
    kill @e[type=snowball,tag=M.ModelCore,sort=nearest,limit=1]