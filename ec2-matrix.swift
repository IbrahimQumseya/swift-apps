import Foundation

func citeste()->[Float]
{
  print("a = ")
  let s_o_a = readLine() // string optional
  if let s_a = s_o_a{
    let f_o_a = Float(s_a)
    if let f_a = f_o_a{
      print("b = ")
      let s_o_b = readLine() // string optional
      if let s_b = s_o_b{
        let f_o_b = Float(s_b)
        if let f_b = f_o_b{
          print("c = ")
          let s_o_c = readLine() // string optional
          if let s_c = s_o_c{
            let f_o_c = Float(s_c)
            if let f_c = f_o_c{
              return [f_a, f_b, f_c]
            }
            else{
              //print("nu s-a putut converti c")
              return [1, 2, 1]
            }
          }
          else{
            //print("nu am citit nimic in c")
            return [1, 2, 1]
          }
        }
        else{
          //print("nu s-a putut converti b")
          return [1, 2, 1]
        }
      }
      else{
        //print("nu am citit nimic in b")
        return [1, 2, 1]
      }
    }
    else{
      //print("nu s-a putut converti a")
      return [1, 2, 1]
    }
  }
  else{
    //print("nu am citit nimic in a")
    return [1, 2, 1]
  }
}
func calculeaza(_ coef:[Float]) ->[[Float]]
{
  let delta = coef[1] * coef[1] - 4 * coef[0] * coef[2]
  if delta >= 0{
    return [[(-coef[1] - sqrt(delta)) / (2 * coef[0]),0],[(-coef[1] + sqrt(delta)) / (2 * coef[0]),0]]
  }
  else{
    return [[-coef[1] / (2 * coef[0]),-sqrt(-delta) / (2 * coef[0])],[-coef[1] / (2 * coef[0]),sqrt(-delta) / (2 * coef[0])]]
  }
}
func tipareste(_ x: [[Float]])
{
  print("x1 = \(x[0][0]) + \(x[0][1])i")
  print("x2 = \(x[1][0]) + \(x[1][1])i")
}

func tipareste_coeficienti(_ coef: [Float])
{
  /*
  for i in coef{
    print(i)
  }
  */
  /*
  var i: Int = 0
  while (i < 3){
    print(coef[i])
    i += 1
  }
*/ 
  var i = 0
  repeat{
    print(coef[i])
    i += 1
  }  while (i < 3)

}


var coef = citeste()
tipareste_coeficienti(coef)
let x = calculeaza(coef)
tipareste(x)
