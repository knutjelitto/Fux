(module
 (type $none_=>_i32 (func (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 21) "\08\00\00\00t\00r\00u\00e")
 (data (i32.const 34) "\n\00\00\00f\00a\00l\00s\00e")
 (data (i32.const 49) "\02\00\00\000")
 (data (i32.const 56) "\02\00\00\000")
 (global $global$0 (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "test_getMaxMemory" (func $0))
 (export "fib" (func $2))
 (export "test" (func $3))
 (start $4)
 (func $0 (result i32)
  (global.get $global$0)
 )
 (func $1 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if (result i32)
   (i32.gt_s
    (local.get $0)
    (i32.const 0)
   )
   (call $1
    (i32.sub
     (local.get $0)
     (i32.const 1)
    )
    (local.get $2)
    (i32.add
     (local.get $1)
     (local.get $2)
    )
   )
   (local.get $1)
  )
 )
 (func $2 (param $0 i32) (result i32)
  (call $1
   (local.get $0)
   (i32.const 0)
   (i32.const 1)
  )
 )
 (func $3 (result i32)
  (call $2
   (i32.const 46)
  )
 )
 (func $4
  (global.set $global$0
   (i32.const 65536)
  )
 )
)