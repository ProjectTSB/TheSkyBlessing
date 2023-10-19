scoreboard players add @s aj.eclael.animation.new.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.new.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/new/apply_frame_as_root
execute if score @s aj.eclael.animation.new.local_anim_time matches 11.. run function animated_java:eclael/zzzzzzzz/animations/new/end