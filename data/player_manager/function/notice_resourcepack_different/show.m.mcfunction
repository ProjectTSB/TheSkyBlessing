#> player_manager:notice_resourcepack_different/show.m
# @input args
#   ResourcePackVersion: string
# @within function player_manager:notice_resourcepack_different/

$tellraw @s [{"translate":"リソースパックが導入されてない、または古いバージョンのリソースパックが導入されています。\n正しいリソースパックを確認の上、導入して下さい。(リソースパックバージョン: $(ResourcePackVersion))","color":"red"}]
