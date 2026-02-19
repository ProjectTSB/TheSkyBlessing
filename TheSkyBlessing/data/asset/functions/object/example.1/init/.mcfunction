#> asset:object/example.1/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/65534/init

say 「私は"@s"です。以下のフィールドを持っています:」
tellraw @p {"storage":"asset:context","nbt":"this.myValue"}
