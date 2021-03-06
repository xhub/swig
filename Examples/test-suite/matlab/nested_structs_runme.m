named = nested_structs.Named();
named.val(999);
assert(isequal(nested_structs.nestedByVal(named), 999), 'nested_structs.nestedByVal(named) is %d but should be %d', nested_structs.nestedByVal(named), 999);
assert(isequal(nested_structs.nestedByPtr(named), 999), 'nested_structs.nestedByPtr(named) is %d but should be %d', nested_structs.nestedByPtr(named), 999);

outer = nested_structs.Outer();
outer.inside1.val(456);
assert(isequal(nested_structs.getInside1Val(outer), 456), 'nested_structs.getInside1Val(outer) is %d but should be %d', nested_structs.getInside1Val(outer), 456);

outer.inside1(named);
assert(isequal(nested_structs.getInside1Val(outer), 999), 'nested_structs.getInside1Val(outer) is %d but should be %d', nested_structs.getInside1Val(outer), 999);


