import Foundation


class t_ec2
{
  var a, b, c: Float
  var x1_re, x1_im, x2_re, x2_im: Float

  init()
  {
    a = 0
    b = 0
    c = 0
    x1_re = 0
    x1_im = 0
    x2_im = 0
    x2_re = 0
  }

  init(a: Float, b: Float, c: Float)
  {
    self.a = a
    self.b = b
    self.c = c
    x1_re = 0
    x1_im = 0
    x2_im = 0
    x2_re = 0

  }
    deinit()
  {
    //destructor
  }
  func citeste()
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
                a = f_a
                b = f_b
                c = f_c

              }
              else{
                //print("nu s-a putut converti c")
                a = 1; b = 2; c = 1
              }
            }
            else{
              //print("nu am citit nimic in c")
              a = 1; b = 2; c = 1
            }
          }
          else{
            //print("nu s-a putut converti b")
            a = 1; b = 2; c = 1
          }
        }
        else{
          //print("nu am citit nimic in b")
          a = 1; b = 2; c = 1
        }
      }
      else{
        //print("nu s-a putut converti a")
        a = 1; b = 2; c = 1
      }
    }
    else{
      //print("nu am citit nimic in a")
      a = 1; b = 2; c = 1
    }
  }
  func calculeaza()
  {
    let delta = b * b - 4 * a * c
      if delta >= 0{
        x1_re = (-b - sqrt(delta)) / (2 * a)
        x2_re = (-b + sqrt(delta)) / (2 * a)
        x1_im = 0
        x2_im = 0
      }
      else{
        x1_re = -b / (2 * a)
        x2_re = -b / (2 * a)
        x1_im = -sqrt(-delta) /  (2 * a)
        x2_im = sqrt(-delta) /  (2 * a)
      }
  }
  func tipareste()
  {
    print("x1 = \(x1_re) + \(x1_im)i")
    print("x2 = \(x2_re) + \(x2_im)i")
  }
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

var ec2 = t_ec2()


ec2.citeste()
ec2.calculeaza()
ec2.tipareste()
