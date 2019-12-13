class t_ec2_view
{
  init()
  {

  }
  func get_coef(_ a: inout Float, _ b: inout Float, _ c: inout Float)
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
    func tipareste(_ x1_re: Float, _ x1_im: Float, _ x2_re: Float, _ x2_im: Float)
  {
        print("x1 = \(x1_re) + \(x1_im)")
        print("x2 = \(x2_re) + \(x2_im)")
  }
}