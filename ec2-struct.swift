import Foundation

struct t_coef{
  var a, b, c: Float
}

struct t_solutie{
  var re, im: Float
}

struct t_solutii{
  var x1, x2: t_solutie
}

func citeste()->t_coef
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
              return t_coef(a: f_a, b: f_b, c: f_c)
            }
            else{
              //print("nu s-a putut converti c")
              return t_coef(a:1, b:2, c:1)
            }
          }
          else{
            //print("nu am citit nimic in c")
            return t_coef(a:1, b:2, c:1)
          }
        }
        else{
          //print("nu s-a putut converti b")
          return t_coef(a:1, b:2, c:1)
        }
      }
      else{
        //print("nu am citit nimic in b")
        return t_coef(a:1, b:2, c:1)
      }
    }
    else{
      //print("nu s-a putut converti a")
      return t_coef(a:1, b:2, c:1)
    }
  }
  else{
    //print("nu am citit nimic in a")
    return t_coef(a:1, b:2, c:1)
  }
}
func calculeaza(_ coef:t_coef)->t_solutii
{
  let delta = coef.b * coef.b - 4 * coef.a * coef.c
  if delta >= 0{
    let x1 = t_solutie(re: (-coef.b - sqrt(delta)) / (2 * coef.a), im: 0)
    let x2 = t_solutie(re: (-coef.b + sqrt(delta)) / (2 * coef.a), im: 0)

    return t_solutii(x1: x1, x2: x2)
  }
  else{
    let x1 = t_solutie(re: -coef.b / (2 * coef.a), im:-sqrt(-delta) / (2 * coef.a))
    
    let x2 = t_solutie(re: -coef.b / (2 * coef.a), im:sqrt(-delta) / (2 * coef.a))

    return t_solutii(x1: x1, x2: x2)
  }
}
func tipareste(_ x: t_solutii)
{
  print("x1 = \(x.x1.re) + \(x.x1.im)i")
  print("x2 = \(x.x2.re) + \(x.x2.im)i")
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
var sol = calculeaza(coef)
tipareste(sol)
