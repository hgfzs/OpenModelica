uniontype UT
  record REC1
    Integer y;
  end REC1;

  record REC2
    Integer z;
  end REC2;
end UT;

model Uniontype2
  function test2
    input UT s;
    output Integer u;
  algorithm
    u := 5;
  end test2;

  function test
    input Integer s;
    output Integer k;
  protected
    UT re;
  algorithm
    re := REC1(66);
    re := REC2(100);
    k := test2(re);
  end test;

  Integer a;
equation
  a = test(5);
end Uniontype2;
