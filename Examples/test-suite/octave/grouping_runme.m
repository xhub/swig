grouping

x = grouping.test1(42);
if (x != 42)
    error
endif

grouping.test2(42);

x = (grouping.do_unary(37, grouping.NEGATE));
if (x != -37)
    error
endif

grouping.cvar.test3 = 42;
