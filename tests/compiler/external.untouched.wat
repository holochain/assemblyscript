(module
 (type $v (func))
 (import "external" "foo" (func $external/foo))
 (import "foo" "bar" (func $external/foo.bar))
 (import "external" "bar" (func $external/two))
 (import "foo" "baz" (func $external/three))
 (import "foo" "var" (global $external/var_ i32))
 (global $HEAP_BASE i32 (i32.const 8))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (memory $0 0)
 (export "memory" (memory $0))
 (export "foo.bar" (func $external/foo.bar))
 (export "foo" (func $external/foo))
 (export "two" (func $external/two))
 (export "three" (func $external/three))
 (export "var_" (global $external/var_))
 (func $null (; 4 ;) (type $v)
 )
)
