push null
sexist
jumpi @methods
call @ctor
@methods:
meta method {
int8(12):int8(14),int8(8):int8(14),int8(4):int8(14),int8(-1):"deal",int8(16):int8(14),int8(14):int8(14),int8(-2):int8(0),int8(0):int8(14),int8(6):int8(14),int8(10):int8(14),int8(2):int8(14)
}
meta method {
int8(-1):"dealPublicCard",int8(-2):int8(0),int8(0):int8(3)
}
meta method {
int8(-1):"dealPrivateCard",int8(-2):int8(0),int8(0):int8(3),int8(2):int8(14)
}
meta method {
int8(-1):"showdown",int8(-2):int8(11),int8(0):int8(11),int8(2):int8(14)
}
meta method {
int8(-1):"create_player",int8(-2):int8(0),int8(0):int8(14),int8(2):int8(3)
}
meta method {
int8(-1):"update_bet",int8(-2):int8(11),int8(0):int8(14),int8(2):int8(3)
}
meta method {
int8(12):int8(3),int8(8):int8(3),int8(4):int8(3),int8(-1):"get_highest_combination",int8(-2):int8(3),int8(0):int8(3),int8(6):int8(3),int8(10):int8(3),int8(2):int8(3)
}
meta method {
int8(8):int8(3),int8(4):int8(3),int8(-1):"get_combination_value",int8(-2):int8(3),int8(0):int8(3),int8(6):int8(3),int8(2):int8(3)
}
dup
push "deal"
eq
jumpi @method_deal
dup
push "dealPublicCard"
eq
jumpi @method_dealPublicCard
dup
push "dealPrivateCard"
eq
jumpi @method_dealPrivateCard
dup
push "showdown"
eq
jumpi @method_showdown
dup
push "create_player"
eq
jumpi @method_create_player
dup
push "update_bet"
eq
jumpi @method_update_bet
dup
push "get_highest_combination"
eq
jumpi @method_get_highest_combination
dup
push "get_combination_value"
eq
jumpi @method_get_combination_value
jump @stop
@method_deal:
push int32(0)
push int32(0)
push int32(0)
push x7461626C655F6361726473
push int32(-1)
push int32(0)
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
push int32(0)
push int32(4)
swapn
pop
push int32(13)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br102
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(15)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br102:
push int32(12)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br132
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(14)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br132:
push int32(11)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br162
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(13)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br162:
push int32(10)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br194
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(12)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br194:
push int32(9)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br226
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(11)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br226:
push int32(8)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br258
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(10)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br258:
push int32(7)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br290
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(9)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br290:
push int32(6)
dupn
push x
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @deal_br322
push x706C6179657273
push int32(4)
dupn
dup
push int32(1)
add
push int32(6)
swapn
pop
push int32(8)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@deal_br322:
push x706C6179657273
push int32(-1)
push int32(1)
push int8(1)
new_array
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(0)
push int32(7)
dupn
push int8(1)
cast
swap
array_mut
push int32(3)
dupn
call @array_to_bytes
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
pop
jump @stop
@method_dealPublicCard:
push int32(0)
push x7461626C655F6361726473
push int32(-1)
push int32(0)
call @storage_get_default
push int32(2)
swapn
pop
push x7461626C655F6361726473
push int32(2)
dupn
dup
push int32(1)
add
push int32(4)
swapn
pop
push int32(5)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
push x7461626C655F6361726473
push int32(-1)
push int32(3)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
pop
pop
pop
jump @stop
@method_dealPrivateCard:
push int32(0)
push int32(0)
push x706C6179657273
push int32(6)
dupn
push x
call @storage_get_default
push int32(3)
swapn
pop
push int32(2)
dupn
push x
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @dealPrivateCard_br36
jump @dealPrivateCard_br101
@dealPrivateCard_br36:
push x706C617965725F63617264735F31
push int32(3)
dupn
push x
call @storage_get_default
push x
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @dealPrivateCard_br85
push x706C617965725F63617264735F31
push int32(3)
dupn
push int32(6)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
jump @dealPrivateCard_br101
@dealPrivateCard_br85:
push x706C617965725F63617264735F32
push int32(3)
dupn
push int32(6)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
@dealPrivateCard_br101:
pop
pop
pop
pop
pop
jump @stop
@method_showdown:
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push x706C6179657273
push int32(-1)
push int32(1)
push int8(1)
new_array
push int32(7)
swapn
pop
push int32(6)
dupn
call @array_to_bytes
call @storage_get_default
push int32(0)
array_get
push int32(28)
swapn
pop
push int32(27)
dupn
push int32(2)
mul
push x7461626C655F6361726473
push int32(-1)
push int32(0)
call @storage_get_default
add
push int32(27)
swapn
pop
push int32(26)
dupn
push int32(30)
dupn
push int32(0)
array_get
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br109
push "count mismatch! was: "
push int32(27)
dupn
push int8(11)
cast
push " got: "
push int32(32)
dupn
push int32(0)
array_get
push int8(11)
cast
swap
concat
swap
concat
swap
concat
push int32(6)
swapn
pop
jump @showdown_br960
@showdown_br109:
push int32(0)
push int32(26)
swapn
pop
jump @showdown_br354
@showdown_br116:
push int32(29)
dupn
push int32(26)
dupn
push int32(1)
add
array_get
push int32(25)
swapn
pop
push int32(30)
dupn
push int32(25)
dupn
push int8(11)
cast
swap
concat
push int32(2)
scall
push int32(24)
swapn
pop
push int32(25)
dupn
push int32(28)
dupn
push int32(2)
mul
swap
lt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br349
push x706C6179657273
push int32(26)
dupn
push int32(29)
dupn
swap
mod
push int8(14)
cast
swap
concat
sget
push int32(22)
swapn
pop
push int32(25)
dupn
push int32(28)
dupn
swap
lt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br216
push x706C617965725F63617264735F31
push int32(22)
dupn
push x
call @storage_get_default
push int32(23)
swapn
pop
jump @showdown_br236
@showdown_br216:
push x706C617965725F63617264735F32
push int32(22)
dupn
push x
call @storage_get_default
push int32(23)
swapn
pop
@showdown_br236:
push int32(22)
dupn
push int32(24)
dupn
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br348
push int32(8)
push int8(11)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push "cards mismatch! #"
swap
array_mut
push int32(2)
dupn
push int32(1)
push int32(27)
dupn
push int8(11)
cast
swap
array_mut
push int32(2)
dupn
push int32(2)
push " ("
swap
array_mut
push int32(2)
dupn
push int32(3)
push int32(26)
dupn
push int8(11)
cast
swap
array_mut
push int32(2)
dupn
push int32(4)
push ") expected: "
swap
array_mut
push int32(2)
dupn
push int32(5)
push int32(24)
dupn
push int8(11)
cast
swap
array_mut
push int32(2)
dupn
push int32(6)
push " got: "
swap
array_mut
push int32(2)
dupn
push int32(7)
push int32(25)
dupn
push int8(11)
cast
swap
array_mut
push int32(2)
dupn
push int32(6)
swapn
pop
jump @showdown_br960
@showdown_br348:
@showdown_br349:
push int32(25)
dupn
push int32(1)
add
push int32(26)
swapn
pop
@showdown_br354:
push int32(25)
dupn
push int32(27)
dupn
swap
lt
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br116
push int32(0)
push int32(21)
swapn
pop
push int32(0)
push int32(26)
swapn
pop
jump @showdown_br457
@showdown_br374:
push x706C6179657273
push int32(26)
dupn
push x
call @storage_get_default
push int32(20)
swapn
pop
push x62657473
push int32(20)
dupn
push int32(0)
call @storage_get_default
push int32(19)
swapn
pop
push int32(20)
dupn
push int32(19)
dupn
add
push int32(21)
swapn
pop
push x62616E6B726F6C6C73
push int32(20)
dupn
push int32(0)
call @storage_get_default
push int32(18)
swapn
pop
push x62616E6B726F6C6C73
push int32(20)
dupn
push int32(19)
dupn
push int32(21)
dupn
push int32(-1)
mul
add
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
push int32(25)
dupn
push int32(1)
add
push int32(26)
swapn
pop
@showdown_br457:
push int32(25)
dupn
push int32(28)
dupn
swap
lt
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br374
push int32(0)
push int32(17)
swapn
pop
push x
push int32(16)
swapn
pop
push int32(0)
push int32(26)
swapn
pop
jump @showdown_br876
@showdown_br484:
push x706C6179657273
push int32(26)
dupn
push x
call @storage_get_default
push int32(20)
swapn
pop
push x666F6C646564
push int32(20)
dupn
push int32(0)
call @storage_get_default
push int32(15)
swapn
pop
push int32(14)
dupn
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br871
push int32(7)
push int8(3)
new_array
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(0)
push x706C617965725F63617264735F31
push int32(22)
dupn
push x
call @storage_get_default
push int32(0)
array_get
swap
array_mut
push int32(1)
dupn
push int32(1)
push x706C617965725F63617264735F32
push int32(22)
dupn
push x
call @storage_get_default
push int32(0)
array_get
swap
array_mut
push int32(1)
dupn
push int32(2)
push x7461626C655F6361726473
push int32(0)
push int32(-1)
call @storage_get_default
swap
array_mut
push int32(1)
dupn
push int32(3)
push x7461626C655F6361726473
push int32(1)
push int32(-1)
call @storage_get_default
swap
array_mut
push int32(1)
dupn
push int32(4)
push x7461626C655F6361726473
push int32(2)
push int32(-1)
call @storage_get_default
swap
array_mut
push int32(1)
dupn
push int32(5)
push x7461626C655F6361726473
push int32(3)
push int32(-1)
call @storage_get_default
swap
array_mut
push int32(1)
dupn
push int32(6)
push x7461626C655F6361726473
push int32(4)
push int32(-1)
call @storage_get_default
swap
array_mut
push int32(1)
dupn
push int32(14)
swapn
pop
push int32(0)
push int32(13)
swapn
pop
push int32(0)
push int32(12)
swapn
pop
jump @showdown_br798
@showdown_br693:
push int32(0)
push int32(11)
swapn
pop
jump @showdown_br780
@showdown_br699:
push int32(13)
dupn
push int32(11)
dupn
array_get
call @func_get_value
push int32(10)
swapn
pop
push int32(13)
dupn
push int32(11)
dupn
push int32(1)
add
array_get
call @func_get_value
push int32(9)
swapn
pop
push int32(9)
dupn
push int32(9)
dupn
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br773
push int32(13)
dupn
push int32(11)
dupn
push int32(1)
add
array_get
push int32(13)
swapn
pop
push int32(13)
dupn
push int32(11)
dupn
push int32(1)
add
push int32(15)
dupn
push int32(13)
dupn
array_get
swap
array_mut
push int32(13)
dupn
push int32(11)
dupn
push int32(14)
dupn
swap
array_mut
@showdown_br773:
push int32(10)
dupn
push int32(1)
add
push int32(11)
swapn
pop
@showdown_br780:
push int32(10)
dupn
push int32(6)
swap
lt
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br699
push int32(11)
dupn
push int32(1)
add
push int32(12)
swapn
pop
@showdown_br798:
push int32(11)
dupn
push int32(7)
swap
lt
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br693
push int32(13)
dupn
push int32(0)
array_get
push int32(14)
dupn
push int32(1)
array_get
push int32(15)
dupn
push int32(2)
array_get
push int32(16)
dupn
push int32(3)
array_get
push int32(17)
dupn
push int32(4)
array_get
push int32(18)
dupn
push int32(5)
array_get
push int32(19)
dupn
push int32(6)
array_get
call @func__get_highest_combination
push int32(8)
swapn
pop
push int32(7)
dupn
push int32(17)
dupn
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br870
push int32(7)
dupn
push int32(17)
swapn
pop
push int32(19)
dupn
push int32(16)
swapn
pop
@showdown_br870:
@showdown_br871:
push int32(25)
dupn
push int32(1)
add
push int32(26)
swapn
pop
@showdown_br876:
push int32(25)
dupn
push int32(28)
dupn
swap
lt
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br484
push int32(15)
dupn
push x
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(1)
eq
jumpi @showdown_br916
push "couldn't find winner!"
push int32(6)
swapn
pop
jump @showdown_br960
@showdown_br916:
push x62616E6B726F6C6C73
push int32(16)
dupn
push int32(0)
call @storage_get_default
push int32(7)
swapn
pop
push x62616E6B726F6C6C73
push int32(16)
dupn
push int32(8)
dupn
push int32(23)
dupn
add
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
push "success!"
push int32(6)
swapn
pop
@showdown_br960:
push int32(5)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
jump @stop
@method_create_player:
push x62616E6B726F6C6C73
push int32(4)
dupn
push int32(4)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
pop
pop
pop
jump @stop
@method_update_bet:
push int32(0)
push int32(0)
push int32(0)
push x62657473
push int32(7)
dupn
push int32(0)
call @storage_get_default
push int32(4)
swapn
pop
push int32(5)
dupn
push int32(4)
dupn
swap
gt
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @update_bet_br53
push "bet is lower than before! old: "
push int32(4)
dupn
push int8(11)
cast
push ", new: "
push int32(8)
dupn
push int8(11)
cast
swap
concat
swap
concat
swap
concat
push int32(3)
swapn
pop
jump @update_bet_br140
@update_bet_br53:
push int32(5)
dupn
push x62616E6B726F6C6C73
push int32(8)
dupn
push int32(0)
call @storage_get_default
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @update_bet_br118
push "not enough bankroll! bet: "
push int32(6)
dupn
push int8(11)
cast
push ", bankroll: "
push x62616E6B726F6C6C73
push int32(10)
dupn
push int32(0)
call @storage_get_default
push int8(11)
cast
swap
concat
swap
concat
swap
concat
push int32(3)
swapn
pop
jump @update_bet_br140
@update_bet_br118:
push x62657473
push int32(7)
dupn
push int32(7)
dupn
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
swap
sput
pop
pop
push "success!"
push int32(3)
swapn
pop
@update_bet_br140:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
jump @stop
@method_get_highest_combination:
push int32(0)
push int32(9)
dupn
push int32(9)
dupn
push int32(9)
dupn
push int32(9)
dupn
push int32(9)
dupn
push int32(9)
dupn
push int32(9)
dupn
call @func__get_highest_combination
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
jump @stop
@method_get_combination_value:
push int32(0)
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func__get_combination_value
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
jump @stop
@ctor:
push null
dup
sput
push int32(0)
push "CARD_VAL_2"
swap
sput
push int32(12)
push "CARD_VAL_A"
swap
sput
new int8[31, 47, 79, 55, 87, 103, 59, 91, 107, 115, 61, 93, 109, 117, 121, 62, 94, 110, 118, 122, 124]
push "card_combinations"
swap
sput
ret
@func_get_suit:
push int32(0)
push int32(3)
dupn
push int32(4)
dupn
push int32(20)
swap
mod
push int32(-1)
mul
add
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
ret
@func_get_value:
push int32(0)
push int32(3)
dupn
push int32(20)
swap
mod
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
ret
@func_has_flag:
push int32(0)
push int32(4)
dupn
push int32(4)
dupn
swap
div
push int32(2)
swap
mod
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_select_combination:
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push x
push int32(5)
swapn
pop
push int32(6)
dupn
push int32(1)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br55
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(16)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br55:
push int32(6)
dupn
push int32(2)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br103
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(15)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br103:
push int32(6)
dupn
push int32(4)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br151
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(14)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br151:
push int32(6)
dupn
push int32(8)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br200
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(13)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br200:
push int32(6)
dupn
push int32(16)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br250
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(12)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br250:
push int32(6)
dupn
push int32(32)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br300
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(11)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br300:
push int32(6)
dupn
push int32(64)
call @func_has_flag
push int32(0)
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(1)
eq
jumpi @select_combination_br350
push int32(4)
dupn
push int32(1)
push int8(1)
new_array
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(0)
push int32(10)
dupn
push int8(1)
cast
swap
array_mut
push int32(2)
dupn
call @array_to_bytes
swap
concat
push int32(5)
swapn
pop
@select_combination_br350:
push int32(4)
dupn
push int32(4)
swapn
pop
push int32(3)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func__get_highest_combination:
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(12)
swapn
pop
push int32(0)
push int32(11)
swapn
pop
jump @_get_highest_combination_br117
@_get_highest_combination_br7:
push int32(19)
dupn
push int32(19)
dupn
push int32(19)
dupn
push int32(19)
dupn
push int32(19)
dupn
push int32(19)
dupn
push int32(19)
dupn
push "card_combinations"
sget
push int32(18)
dupn
array_get
call @func_select_combination
push int32(10)
swapn
pop
push int32(9)
dupn
push int32(0)
array_get
push int32(9)
swapn
pop
push int32(9)
dupn
push int32(1)
array_get
push int32(8)
swapn
pop
push int32(9)
dupn
push int32(2)
array_get
push int32(7)
swapn
pop
push int32(9)
dupn
push int32(3)
array_get
push int32(6)
swapn
pop
push int32(9)
dupn
push int32(4)
array_get
push int32(5)
swapn
pop
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
call @func__get_combination_value
push int32(4)
swapn
pop
push int32(3)
dupn
push int32(12)
dupn
swap
gt
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_highest_combination_br112
push int32(3)
dupn
push int32(12)
swapn
pop
@_get_highest_combination_br112:
push int32(10)
dupn
push int32(1)
add
push int32(11)
swapn
pop
@_get_highest_combination_br117:
push int32(10)
dupn
push int32(21)
swap
lt
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_highest_combination_br7
push int32(11)
dupn
push int32(3)
swapn
pop
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func__get_combination_value:
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(0)
push int32(13)
dupn
call @func_get_value
push int32(8)
swapn
pop
push int32(12)
dupn
call @func_get_value
push int32(7)
swapn
pop
push int32(11)
dupn
call @func_get_value
push int32(6)
swapn
pop
push int32(10)
dupn
call @func_get_value
push int32(5)
swapn
pop
push int32(9)
dupn
call @func_get_value
push int32(4)
swapn
pop
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
call @func_isStraightFlush
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br86
push int32(1000000)
push int32(8)
dupn
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br86:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isFourOfAKind
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br136
push int32(900000)
push int32(1000)
push int32(7)
dupn
push int32(1)
add
mul
add
push int32(8)
dupn
push int32(5)
dupn
add
push int32(7)
dupn
push int32(-1)
mul
add
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br136:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isFullHouse
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br186
push int32(800000)
push int32(1000)
push int32(7)
dupn
push int32(1)
add
mul
add
push int32(8)
dupn
push int32(5)
dupn
add
push int32(7)
dupn
push int32(-1)
mul
add
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br186:
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
push int32(13)
dupn
call @func_isFlush
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br239
push int32(700000)
push int32(5)
push int32(5)
dupn
mul
add
push int32(4)
push int32(6)
dupn
mul
add
push int32(3)
push int32(7)
dupn
mul
add
push int32(2)
push int32(8)
dupn
mul
add
push int32(8)
dupn
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br239:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isStraight
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br275
push int32(600000)
push int32(4)
dupn
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br275:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isThreeOfAKind
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br334
push int32(500000)
push int32(1000)
push int32(7)
dupn
push int32(1)
add
mul
add
push int32(5)
push int32(5)
dupn
mul
add
push int32(4)
push int32(6)
dupn
mul
add
push int32(3)
push int32(7)
dupn
mul
add
push int32(2)
push int32(8)
dupn
mul
add
push int32(8)
dupn
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br334:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isTwoPairs
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br392
push int32(400000)
push int32(1000)
push int32(6)
dupn
push int32(1)
add
mul
add
push int32(50)
push int32(8)
dupn
push int32(1)
add
mul
add
push int32(8)
dupn
push int32(7)
dupn
add
push int32(5)
dupn
add
push int32(8)
dupn
push int32(-1)
mul
add
push int32(6)
dupn
push int32(-1)
mul
add
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br392:
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isPair
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @_get_combination_value_br435
push int32(300000)
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
call @func_getPairCoef
add
push int32(3)
swapn
pop
jump @_get_combination_value_br457
@_get_combination_value_br435:
push int32(5)
push int32(4)
dupn
mul
push int32(4)
push int32(6)
dupn
mul
add
push int32(3)
push int32(7)
dupn
mul
add
push int32(2)
push int32(8)
dupn
mul
add
push int32(8)
dupn
add
push int32(3)
swapn
pop
@_get_combination_value_br457:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_getPairCoef:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @getPairCoef_br38
push int32(1000)
push int32(9)
dupn
push int32(1)
add
mul
push int32(5)
push int32(6)
dupn
mul
add
push int32(4)
push int32(7)
dupn
mul
add
push int32(3)
push int32(8)
dupn
mul
add
push int32(3)
swapn
pop
jump @getPairCoef_br148
@getPairCoef_br38:
push int32(7)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @getPairCoef_br73
push int32(1000)
push int32(8)
dupn
push int32(1)
add
mul
push int32(5)
push int32(6)
dupn
mul
add
push int32(4)
push int32(7)
dupn
mul
add
push int32(9)
dupn
add
push int32(3)
swapn
pop
jump @getPairCoef_br148
@getPairCoef_br73:
push int32(6)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @getPairCoef_br108
push int32(1000)
push int32(7)
dupn
push int32(1)
add
mul
push int32(5)
push int32(6)
dupn
mul
add
push int32(2)
push int32(9)
dupn
mul
add
push int32(9)
dupn
add
push int32(3)
swapn
pop
jump @getPairCoef_br148
@getPairCoef_br108:
push int32(5)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @getPairCoef_br144
push int32(1000)
push int32(5)
dupn
push int32(1)
add
mul
push int32(3)
push int32(8)
dupn
mul
add
push int32(2)
push int32(9)
dupn
mul
add
push int32(9)
dupn
add
push int32(3)
swapn
pop
jump @getPairCoef_br148
@getPairCoef_br144:
push int32(0)
push int32(3)
swapn
pop
@getPairCoef_br148:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isFourOfAKind:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFourOfAKind_br19
push int32(8)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFourOfAKind_br19
push int32(8)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isFourOfAKind_br20
@isFourOfAKind_br19:
push int32(1)
@isFourOfAKind_br20:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isFourOfAKind_br29
push int32(1)
push int32(3)
swapn
pop
jump @isFourOfAKind_br64
@isFourOfAKind_br29:
push int32(4)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFourOfAKind_br50
push int32(4)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFourOfAKind_br50
push int32(4)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isFourOfAKind_br51
@isFourOfAKind_br50:
push int32(1)
@isFourOfAKind_br51:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isFourOfAKind_br60
push int32(1)
push int32(3)
swapn
pop
jump @isFourOfAKind_br64
@isFourOfAKind_br60:
push int32(0)
push int32(3)
swapn
pop
@isFourOfAKind_br64:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isFullHouse:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFullHouse_br20
push int32(6)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFullHouse_br20
push int32(6)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isFullHouse_br21
@isFullHouse_br20:
push int32(1)
@isFullHouse_br21:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isFullHouse_br30
push int32(1)
push int32(3)
swapn
pop
jump @isFullHouse_br63
@isFullHouse_br30:
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFullHouse_br49
push int32(8)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFullHouse_br49
push int32(5)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isFullHouse_br50
@isFullHouse_br49:
push int32(1)
@isFullHouse_br50:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isFullHouse_br59
push int32(1)
push int32(3)
swapn
pop
jump @isFullHouse_br63
@isFullHouse_br59:
push int32(0)
push int32(3)
swapn
pop
@isFullHouse_br63:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isFlush:
push int32(0)
push int32(0)
push int32(8)
dupn
call @func_get_suit
push int32(3)
swapn
pop
push int32(2)
dupn
push int32(8)
dupn
call @func_get_suit
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFlush_br53
push int32(2)
dupn
push int32(7)
dupn
call @func_get_suit
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFlush_br53
push int32(2)
dupn
push int32(6)
dupn
call @func_get_suit
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isFlush_br53
push int32(2)
dupn
push int32(5)
dupn
call @func_get_suit
eq
push int8(3)
cast
jump @isFlush_br54
@isFlush_br53:
push int32(0)
@isFlush_br54:
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isStraightSimple:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
push int32(1)
push int32(-1)
mul
add
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraightSimple_br15
push int32(0)
push int32(3)
swapn
pop
jump @isStraightSimple_br63
@isStraightSimple_br15:
push int32(8)
dupn
push int32(7)
dupn
push int32(2)
push int32(-1)
mul
add
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraightSimple_br29
push int32(0)
push int32(3)
swapn
pop
jump @isStraightSimple_br63
@isStraightSimple_br29:
push int32(8)
dupn
push int32(6)
dupn
push int32(3)
push int32(-1)
mul
add
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraightSimple_br44
push int32(0)
push int32(3)
swapn
pop
jump @isStraightSimple_br63
@isStraightSimple_br44:
push int32(8)
dupn
push int32(5)
dupn
push int32(4)
push int32(-1)
mul
add
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraightSimple_br59
push int32(0)
push int32(3)
swapn
pop
jump @isStraightSimple_br63
@isStraightSimple_br59:
push int32(1)
push int32(3)
swapn
pop
@isStraightSimple_br63:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isStraight:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
push int32(8)
dupn
call @func_isStraightSimple
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraight_br25
push int32(1)
push int32(3)
swapn
pop
jump @isStraight_br135
@isStraight_br25:
push int32(8)
dupn
push "CARD_VAL_2"
sget
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraight_br42
push int32(0)
push int32(3)
swapn
pop
jump @isStraight_br135
@isStraight_br42:
push int32(4)
dupn
push "CARD_VAL_A"
sget
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraight_br60
push int32(0)
push int32(3)
swapn
pop
jump @isStraight_br135
@isStraight_br60:
push int32(7)
dupn
push int32(9)
dupn
push int32(1)
add
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isStraight_br84
push int32(6)
dupn
push int32(9)
dupn
push int32(2)
add
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isStraight_br84
push int32(5)
dupn
push int32(9)
dupn
push int32(3)
add
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isStraight_br85
@isStraight_br84:
push int32(1)
@isStraight_br85:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraight_br94
push int32(1)
push int32(3)
swapn
pop
jump @isStraight_br135
@isStraight_br94:
push int32(4)
dupn
push int32(6)
dupn
push int32(1)
add
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isStraight_br121
push int32(4)
dupn
push int32(7)
dupn
push int32(2)
add
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isStraight_br121
push int32(4)
dupn
push int32(8)
dupn
push int32(3)
add
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isStraight_br122
@isStraight_br121:
push int32(1)
@isStraight_br122:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isStraight_br131
push int32(1)
push int32(3)
swapn
pop
jump @isStraight_br135
@isStraight_br131:
push int32(0)
push int32(3)
swapn
pop
@isStraight_br135:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isStraightFlush:
push int32(0)
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
push int32(12)
dupn
call @func_isFlush
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isStraightFlush_br34
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
push int32(7)
dupn
call @func_isStraight
jump @isStraightFlush_br35
@isStraightFlush_br34:
push int32(0)
@isStraightFlush_br35:
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isThreeOfAKind:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isThreeOfAKind_br14
push int32(8)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isThreeOfAKind_br15
@isThreeOfAKind_br14:
push int32(1)
@isThreeOfAKind_br15:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isThreeOfAKind_br24
push int32(1)
push int32(3)
swapn
pop
jump @isThreeOfAKind_br77
@isThreeOfAKind_br24:
push int32(7)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isThreeOfAKind_br38
push int32(7)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isThreeOfAKind_br39
@isThreeOfAKind_br38:
push int32(1)
@isThreeOfAKind_br39:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isThreeOfAKind_br48
push int32(1)
push int32(3)
swapn
pop
jump @isThreeOfAKind_br77
@isThreeOfAKind_br48:
push int32(6)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int8(9)
cast
not
push int8(3)
cast
push int32(1)
eq
jumpi @isThreeOfAKind_br63
push int32(6)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
jump @isThreeOfAKind_br64
@isThreeOfAKind_br63:
push int32(1)
@isThreeOfAKind_br64:
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isThreeOfAKind_br73
push int32(1)
push int32(3)
swapn
pop
jump @isThreeOfAKind_br77
@isThreeOfAKind_br73:
push int32(0)
push int32(3)
swapn
pop
@isThreeOfAKind_br77:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isTwoPairs:
push int32(0)
push int32(0)
push int32(8)
dupn
push int32(8)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isTwoPairs_br30
push int32(6)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(1)
eq
jumpi @isTwoPairs_br25
push int32(5)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
jump @isTwoPairs_br26
@isTwoPairs_br25:
push int32(1)
@isTwoPairs_br26:
push int32(3)
swapn
pop
jump @isTwoPairs_br54
@isTwoPairs_br30:
push int32(7)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int32(0)
eq
push int8(3)
cast
push int32(2)
swapn
pop
push int32(1)
dupn
push int32(1)
eq
jumpi @isTwoPairs_br50
push int32(5)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(3)
swapn
pop
jump @isTwoPairs_br54
@isTwoPairs_br50:
push int32(0)
push int32(3)
swapn
pop
@isTwoPairs_br54:
push int32(2)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@func_isPair:
push int32(0)
push int32(7)
dupn
push int32(7)
dupn
eq
push int8(3)
cast
push int32(1)
eq
jumpi @isPair_br22
push int32(6)
dupn
push int32(6)
dupn
eq
push int8(3)
cast
push int32(1)
eq
jumpi @isPair_br22
push int32(5)
dupn
push int32(5)
dupn
eq
push int8(3)
cast
push int32(1)
eq
jumpi @isPair_br22
push int32(4)
dupn
push int32(4)
dupn
eq
push int8(3)
cast
jump @isPair_br23
@isPair_br22:
push int32(1)
@isPair_br23:
push int32(2)
swapn
pop
push int32(1)
dupn
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
swap
pop
ret
@array_to_bytes:
dup
length
push x
push int32(0)
@array_to_bytes_loop:
push int32(4)
dupn
push int32(2)
dupn
array_get
push int8(14)
cast
push int32(3)
dupn
concat
push int32(3)
swapn
pop
push int32(1)
add
dup
push int32(4)
dupn
gt
jumpi @array_to_bytes_loop
pop
swap
pop
ret
@storage_get_default:
push int32(2)
dupn
push int8(14)
cast
push int32(4)
dupn
concat
sexist
jumpi @get_default_if
swap
pop
swap
pop
ret
@get_default_if:
pop
push int8(14)
cast
swap
concat
sget
ret
@stop: