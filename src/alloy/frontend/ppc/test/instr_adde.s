test_adde_1:
  #_ REGISTER_IN r4 1
  #_ REGISTER_IN r5 2
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 3
  #_ REGISTER_OUT r4 1
  #_ REGISTER_OUT r5 2
  #_ REGISTER_OUT r6 0

test_adde_2:
  #_ REGISTER_IN r4 1
  #_ REGISTER_IN r5 2
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 4
  #_ REGISTER_OUT r4 1
  #_ REGISTER_OUT r5 2
  #_ REGISTER_OUT r6 0

test_adde_3:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 0
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 0
  #_ REGISTER_OUT r6 0

test_adde_4:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 0
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 0
  #_ REGISTER_OUT r6 1

test_adde_5:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 1
  #_ REGISTER_OUT r6 1

test_adde_6:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 1
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 1
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 1
  #_ REGISTER_OUT r6 1

test_adde_7:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 123
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0x000000000000007A
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 123
  #_ REGISTER_OUT r6 1

test_adde_8:
  #_ REGISTER_IN r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 123
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0x000000000000007B
  #_ REGISTER_OUT r4 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 123
  #_ REGISTER_OUT r6 1

test_adde_9:
  #_ REGISTER_IN r4 0x7FFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 0xFFFFFFFFFFFFFFFF
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0x7FFFFFFFFFFFFFFE
  #_ REGISTER_OUT r4 0x7FFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r6 1

test_adde_10:
  #_ REGISTER_IN r4 0x7FFFFFFFFFFFFFFF
  #_ REGISTER_IN r5 0xFFFFFFFFFFFFFFFF
  xor r3, r3, r3
  not r3, r3
  addic r3, r3, 1 # CA=1
  adde r3, r4, r5
  adde r6, r0, r0
  blr
  #_ REGISTER_OUT r3 0x7FFFFFFFFFFFFFFF
  #_ REGISTER_OUT r4 0x7FFFFFFFFFFFFFFF
  #_ REGISTER_OUT r5 0xFFFFFFFFFFFFFFFF
  #_ REGISTER_OUT r6 1
