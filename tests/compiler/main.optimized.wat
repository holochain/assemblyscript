(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $main/code (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (memory $0 0)
 (export "memory" (memory $0))
 (export "main" (func $main/main))
 (func $main/main (; 0 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_global $~started)
   )
   (block
    (call $start)
    (set_global $~started
     (i32.const 1)
    )
   )
  )
  (get_global $main/code)
 )
 (func $start (; 1 ;) (; has Stack IR ;) (type $v)
  (set_global $main/code
   (i32.const 1)
  )
 )
 (func $null (; 2 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
