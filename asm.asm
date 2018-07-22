[jump to methods]
meta method { int8(-1):"balanceOf",int8(-2):int8(3),int8(0):int8(14) }
meta method { int8(-1):"transfer",int8(-2):int8(0),int8(0):int8(14),int8(2):int8(3) }
meta method { int8(8):int8(3),int8(4):int8(3),int8(-1):"get_combination_value",int8(-2):int8(3),int8(0):int8(3),int8(6):int8(3),int8(2):int8(3) }
dup
push "balanceOf"
eq
jumpi @method_balanceOf
dup
push "transfer"
eq
jumpi @method_transfer
dup
push "get_combination_value"
eq
jumpi @method_get_combination_value
jump @stop

[methods]
[method balanceOf args=1 locals=1 local=false]
@method_balanceOf:        [<method name> stack_offset=none]
push int32(0)             [<local vars> stack_offset=none]
                          [<Nop> stack_offset=0]
                          [<LdArg0> stack_offset=0]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=0]
push int32(4)             [<LdArg1> stack_offset=1]
dupn                      
push int32(0)             [<LdcI40> stack_offset=2]
call @storage_get_default [<CallVirt(MemberRefData(TypeSpecData(108),getDefault,116))> stack_offset=3]
push int32(2)             [<StLoc0> stack_offset=1]
swapn                     
pop                       
                          [<Nop> stack_offset=0]
push int32(1)             [<LdLoc0> stack_offset=0]
dupn                      
                          [<Ret> stack_offset=1]
swap                      [<local vars clearing> stack_offset=none]
pop                       
swap                      
pop                       
swap                      
pop                       
jump @stop                [<end of a method> stack_offset=none]
[method transfer args=2 locals=1 local=false]
@method_transfer:         [<method name> stack_offset=none]
push int32(0)             [<local vars> stack_offset=none]
                          [<Nop> stack_offset=0]
push int32(3)             [<LdArg2> stack_offset=0]
dupn                      
push int32(0)             [<LdcI40> stack_offset=1]
swap                      [<Cgt> stack_offset=2]
gt                        
push int8(3)              
cast                      
push int32(0)             [<LdcI40> stack_offset=1]
eq                        [<Ceq> stack_offset=2]
push int8(3)              
cast                      
push int32(2)             [<StLoc0> stack_offset=1]
swapn                     
pop                       
push int32(1)             [<LdLoc0> stack_offset=0]
dupn                      
push int32(1)             [<JumpI(transfer_br104)> stack_offset=1]
eq                        
jumpi @transfer_br104     
                          [<Nop> stack_offset=0]
                          [<LdArg0> stack_offset=0]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=0]
from                      [<Call(MemberRefData(TypeRefData(10,Info,Com.Expload),Sender,129))> stack_offset=1]
push int32(0)             [<LdcI40> stack_offset=2]
call @storage_get_default [<CallVirt(MemberRefData(TypeSpecData(108),getDefault,116))> stack_offset=3]
push int32(4)             [<LdArg2> stack_offset=1]
dupn                      
swap                      [<Clt> stack_offset=2]
lt                        
push int8(3)              
cast                      
push int32(2)             [<StLoc0> stack_offset=1]
swapn                     
pop                       
push int32(1)             [<LdLoc0> stack_offset=0]
dupn                      
push int32(1)             [<JumpI(transfer_br103)> stack_offset=1]
eq                        
jumpi @transfer_br103     
                          [<Nop> stack_offset=0]
                          [<LdArg0> stack_offset=0]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=0]
from                      [<Call(MemberRefData(TypeRefData(10,Info,Com.Expload),Sender,129))> stack_offset=1]
                          [<LdArg0> stack_offset=2]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=2]
from                      [<Call(MemberRefData(TypeRefData(10,Info,Com.Expload),Sender,129))> stack_offset=3]
push int32(0)             [<LdcI40> stack_offset=4]
call @storage_get_default [<CallVirt(MemberRefData(TypeSpecData(108),getDefault,116))> stack_offset=5]
push int32(6)             [<LdArg2> stack_offset=3]
dupn                      
push int32(-1)            [<Sub> stack_offset=4]
mul                       
add                       
push int32(2)             [<CallVirt(MemberRefData(TypeSpecData(108),put,134))> stack_offset=3]
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
                          [<Nop> stack_offset=0]
                          [<LdArg0> stack_offset=0]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=0]
push int32(5)             [<LdArg1> stack_offset=1]
dupn                      
                          [<LdArg0> stack_offset=2]
push x62616C616E636573    [<LdFld(FieldData(1,balances,10))> stack_offset=2]
push int32(7)             [<LdArg1> stack_offset=3]
dupn                      
push int32(0)             [<LdcI40> stack_offset=4]
call @storage_get_default [<CallVirt(MemberRefData(TypeSpecData(108),getDefault,116))> stack_offset=5]
push int32(6)             [<LdArg2> stack_offset=3]
dupn                      
add                       [<Add> stack_offset=4]
push int32(2)             [<CallVirt(MemberRefData(TypeSpecData(108),put,134))> stack_offset=3]
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
                          [<Nop> stack_offset=0]
                          [<Nop> stack_offset=0]
@transfer_br103:          [<Label(transfer_br103)> stack_offset=0]
                          [<Nop> stack_offset=0]
@transfer_br104:          [<Label(transfer_br104)> stack_offset=0]
                          [<Ret> stack_offset=0]
pop                       [<local vars clearing> stack_offset=none]
pop                       
pop                       
pop                       
jump @stop                [<end of a method> stack_offset=none]
[method get_combination_value args=5 locals=7 local=false]
@method_get_combination_value:     [<method name> stack_offset=none]
push int32(0)                      [<local vars> stack_offset=none]
push int32(0)                      
push int32(0)                      
push int32(0)                      
push int32(0)                      
push int32(0)                      
push int32(0)                      
                                   [<Nop> stack_offset=0]
                                   [<LdArg0> stack_offset=0]
push int32(13)                     [<LdArg1> stack_offset=0]
dupn                               
call @func_get_value               [<Call(MethodDefData(0,129,get_value,32,Vector(ParamData(0,1,card))))> stack_offset=1]
push int32(8)                      [<StLoc0> stack_offset=1]
swapn                              
pop                                
                                   [<LdArg0> stack_offset=0]
push int32(12)                     [<LdArg2> stack_offset=0]
dupn                               
call @func_get_value               [<Call(MethodDefData(0,129,get_value,32,Vector(ParamData(0,1,card))))> stack_offset=1]
push int32(7)                      [<StLoc1> stack_offset=1]
swapn                              
pop                                
                                   [<LdArg0> stack_offset=0]
push int32(11)                     [<LdArg3> stack_offset=0]
dupn                               
call @func_get_value               [<Call(MethodDefData(0,129,get_value,32,Vector(ParamData(0,1,card))))> stack_offset=1]
push int32(6)                      [<StLoc2> stack_offset=1]
swapn                              
pop                                
                                   [<LdArg0> stack_offset=0]
push int32(10)                     [<LdArgS(4)> stack_offset=0]
dupn                               
call @func_get_value               [<Call(MethodDefData(0,129,get_value,32,Vector(ParamData(0,1,card))))> stack_offset=1]
push int32(5)                      [<StLoc3> stack_offset=1]
swapn                              
pop                                
                                   [<LdArg0> stack_offset=0]
push int32(9)                      [<LdArgS(5)> stack_offset=0]
dupn                               
call @func_get_value               [<Call(MethodDefData(0,129,get_value,32,Vector(ParamData(0,1,card))))> stack_offset=1]
push int32(4)                      [<StLocS(4)> stack_offset=1]
swapn                              
pop                                
                                   [<LdArg0> stack_offset=0]
push int32(13)                     [<LdArg1> stack_offset=0]
dupn                               
push int32(13)                     [<LdArg2> stack_offset=1]
dupn                               
push int32(13)                     [<LdArg3> stack_offset=2]
dupn                               
push int32(13)                     [<LdArgS(4)> stack_offset=3]
dupn                               
push int32(13)                     [<LdArgS(5)> stack_offset=4]
dupn                               
push int32(12)                     [<LdLoc0> stack_offset=5]
dupn                               
push int32(12)                     [<LdLoc1> stack_offset=6]
dupn                               
push int32(12)                     [<LdLoc2> stack_offset=7]
dupn                               
push int32(12)                     [<LdLoc3> stack_offset=8]
dupn                               
push int32(12)                     [<LdLocS(4)> stack_offset=9]
dupn                               
call @func_isStraightFlush         [<Call(MethodDefData(0,129,isStraightFlush,76,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4), ParamData(0,6,cv0), ParamData(0,7,cv1), ParamData(0,8,cv2), ParamData(0,9,cv3), ParamData(0,10,cv4))))> stack_offset=10]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br86)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br86  
push int32(1000000)                [<LdcI4(1000000)> stack_offset=0]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br86:       [<Label(get_combination_value_br86)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isFourOfAKind           [<Call(MethodDefData(0,129,isFourOfAKind,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br136)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br136 
push int32(900000)                 [<LdcI4(900000)> stack_offset=0]
push int32(1000)                   [<LdcI4(1000)> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(1)                      [<LdcI41> stack_offset=3]
add                                [<Add> stack_offset=4]
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
push int32(5)                      [<LdLocS(4)> stack_offset=2]
dupn                               
add                                [<Add> stack_offset=3]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(-1)                     [<Sub> stack_offset=3]
mul                                
add                                
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br136:      [<Label(get_combination_value_br136)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isFullHouse             [<Call(MethodDefData(0,129,isFullHouse,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br186)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br186 
push int32(800000)                 [<LdcI4(800000)> stack_offset=0]
push int32(1000)                   [<LdcI4(1000)> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(1)                      [<LdcI41> stack_offset=3]
add                                [<Add> stack_offset=4]
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
push int32(5)                      [<LdLocS(4)> stack_offset=2]
dupn                               
add                                [<Add> stack_offset=3]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(-1)                     [<Sub> stack_offset=3]
mul                                
add                                
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br186:      [<Label(get_combination_value_br186)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(13)                     [<LdArg1> stack_offset=0]
dupn                               
push int32(13)                     [<LdArg2> stack_offset=1]
dupn                               
push int32(13)                     [<LdArg3> stack_offset=2]
dupn                               
push int32(13)                     [<LdArgS(4)> stack_offset=3]
dupn                               
push int32(13)                     [<LdArgS(5)> stack_offset=4]
dupn                               
call @func_isFlush                 [<Call(MethodDefData(0,129,isFlush,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br239)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br239 
push int32(700000)                 [<LdcI4(700000)> stack_offset=0]
push int32(5)                      [<LdcI45> stack_offset=1]
push int32(5)                      [<LdLocS(4)> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(4)                      [<LdcI44> stack_offset=1]
push int32(6)                      [<LdLoc3> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(3)                      [<LdcI43> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(2)                      [<LdcI42> stack_offset=1]
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br239:      [<Label(get_combination_value_br239)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isStraight              [<Call(MethodDefData(0,129,isStraight,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br275)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br275 
push int32(600000)                 [<LdcI4(600000)> stack_offset=0]
push int32(4)                      [<LdLocS(4)> stack_offset=1]
dupn                               
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br275:      [<Label(get_combination_value_br275)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isThreeOfAKind          [<Call(MethodDefData(0,129,isThreeOfAKind,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br334)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br334 
push int32(500000)                 [<LdcI4(500000)> stack_offset=0]
push int32(1000)                   [<LdcI4(1000)> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(1)                      [<LdcI41> stack_offset=3]
add                                [<Add> stack_offset=4]
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(5)                      [<LdcI45> stack_offset=1]
push int32(5)                      [<LdLocS(4)> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(4)                      [<LdcI44> stack_offset=1]
push int32(6)                      [<LdLoc3> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(3)                      [<LdcI43> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(2)                      [<LdcI42> stack_offset=1]
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br334:      [<Label(get_combination_value_br334)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isTwoPairs              [<Call(MethodDefData(0,129,isTwoPairs,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br392)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br392 
push int32(400000)                 [<LdcI4(400000)> stack_offset=0]
push int32(1000)                   [<LdcI4(1000)> stack_offset=1]
push int32(6)                      [<LdLoc3> stack_offset=2]
dupn                               
push int32(1)                      [<LdcI41> stack_offset=3]
add                                [<Add> stack_offset=4]
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(50)                     [<LdcI4S(50)> stack_offset=1]
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
push int32(1)                      [<LdcI41> stack_offset=3]
add                                [<Add> stack_offset=4]
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
add                                [<Add> stack_offset=3]
push int32(5)                      [<LdLocS(4)> stack_offset=2]
dupn                               
add                                [<Add> stack_offset=3]
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
push int32(-1)                     [<Sub> stack_offset=3]
mul                                
add                                
push int32(6)                      [<LdLoc3> stack_offset=2]
dupn                               
push int32(-1)                     [<Sub> stack_offset=3]
mul                                
add                                
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br392:      [<Label(get_combination_value_br392)> stack_offset=none]
                                   [<LdArg0> stack_offset=0]
push int32(7)                      [<LdLoc0> stack_offset=0]
dupn                               
push int32(7)                      [<LdLoc1> stack_offset=1]
dupn                               
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
push int32(7)                      [<LdLoc3> stack_offset=3]
dupn                               
push int32(7)                      [<LdLocS(4)> stack_offset=4]
dupn                               
call @func_isPair                  [<Call(MethodDefData(0,129,isPair,67,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=5]
push int32(0)                      [<LdcI40> stack_offset=1]
eq                                 [<Ceq> stack_offset=2]
push int8(3)                       
cast                               
push int32(2)                      [<StLocS(6)> stack_offset=1]
swapn                              
pop                                
push int32(1)                      [<LdLocS(6)> stack_offset=0]
dupn                               
push int32(1)                      [<JumpI(get_combination_value_br435)> stack_offset=1]
eq                                 
jumpi @get_combination_value_br435 
push int32(300000)                 [<LdcI4(300000)> stack_offset=0]
                                   [<LdArg0> stack_offset=1]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
push int32(8)                      [<LdLoc2> stack_offset=3]
dupn                               
push int32(8)                      [<LdLoc3> stack_offset=4]
dupn                               
push int32(8)                      [<LdLocS(4)> stack_offset=5]
dupn                               
call @func_getPairCoef             [<Call(MethodDefData(0,129,getPairCoef,58,Vector(ParamData(0,1,c0), ParamData(0,2,c1), ParamData(0,3,c2), ParamData(0,4,c3), ParamData(0,5,c4))))> stack_offset=6]
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
jump @get_combination_value_br457  [<Jump(get_combination_value_br457)> stack_offset=0]
@get_combination_value_br435:      [<Label(get_combination_value_br435)> stack_offset=none]
push int32(5)                      [<LdcI45> stack_offset=0]
push int32(4)                      [<LdLocS(4)> stack_offset=1]
dupn                               
mul                                [<Mul> stack_offset=2]
push int32(4)                      [<LdcI44> stack_offset=1]
push int32(6)                      [<LdLoc3> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(3)                      [<LdcI43> stack_offset=1]
push int32(7)                      [<LdLoc2> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(2)                      [<LdcI42> stack_offset=1]
push int32(8)                      [<LdLoc1> stack_offset=2]
dupn                               
mul                                [<Mul> stack_offset=3]
add                                [<Add> stack_offset=2]
push int32(8)                      [<LdLoc0> stack_offset=1]
dupn                               
add                                [<Add> stack_offset=2]
push int32(3)                      [<StLocS(5)> stack_offset=1]
swapn                              
pop                                
                                   [<Nop> stack_offset=0]
@get_combination_value_br457:      [<Label(get_combination_value_br457)> stack_offset=0]
push int32(2)                      [<LdLocS(5)> stack_offset=0]
dupn                               
                                   [<Ret> stack_offset=1]
swap                               [<local vars clearing> stack_offset=none]
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
jump @stop                         [<end of a method> stack_offset=none]

[functions]
[function storage_get_default]
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

[finish]
@stop: