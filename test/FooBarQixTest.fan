class FooBarQixTest : Test
{
  Void testCount() {
    verifyEq(FBQNumber.count(10), 
      "1
       2
       FooFoo
       4
       BarBar
       Foo
       QixQix
       8
       Foo
       Bar")    
  }

  Void testDisplaysNumberByDefault() {
    verifyEq(FBQNumber(1).toStr, "1")
  }
  
  Void testDisplaysZeroAs0() {
    verifyEq(FBQNumber(0).toStr, "0")
  }
  
  Void testDisplaysFooWhenMultipleOf3() {
    verifyEq(FBQNumber(9).toStr, "Foo")    
  }
  
  Void testDisplaysBarWhenMultipleOf5() {
    verifyEq(FBQNumber(10).toStr, "Bar")    
  }
  
  Void testDisplaysQixWhenMultipleOf7() {
    verifyEq(FBQNumber(14).toStr, "Qix")    
  }
  
  Void testDisplaysFooIfContainsDigit3() {
    verifyEq(FBQNumber(3).toStr, "FooFoo")    
  }
  
  Void testDisplaysBarIfContainsDigit5() {
    verifyEq(FBQNumber(5).toStr, "BarBar")    
  }
  
  Void testDisplaysQixIfContainsDigit7() {
    verifyEq(FBQNumber(17).toStr, "Qix")    
  }
  
  Void testDisplaysMultiplesInOrderFooBarQix() {
    verifyEq(FBQNumber(21).toStr, "FooQix")    
  }
  
  Void testDisplaysMultiplesBeforeDigits() {
    verifyEq(FBQNumber(51).toStr, "FooBar")    
  }
  
  Void testDisplaysDigitsInOrder() {
    verifyEq(FBQNumber(53).toStr, "BarFoo")    
  }
}
