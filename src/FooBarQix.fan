class Main {
  static Void main(Str[] args) {
    echo(FBQNumber.count(100))
  } 
}

class FBQNumber {
  Int number
  new make(Int number){
    this.number = number
  }
  
  static Str count(Int target) {
    return (1..target).map |number->Str| { FBQNumber(number).toStr  } .join("\n")
  }

  override Str toStr() {
    Str result := ""
    if (isMultiple(3)) result += "Foo"
    if (isMultiple(5)) result +=  "Bar"
    if (isMultiple(7)) result += "Qix"
    
    number.toStr().each |digit| { 
      if (digit.toChar=="3") result += "Foo" 
      if (digit.toChar=="5") result += "Bar" 
      if (digit.toChar=="7") result += "Qix" 
    }
    
    if (result == "") result += number.toStr 
    return result
  }
  
  Bool isMultiple(Int multiple) {
    return number !=0 && number.mod(multiple)==0
  }
}