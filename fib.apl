⍝ Fibonacci sequence
∇NUM←FIB N;A B C D E
  A←2 2⍴0 1 1 1 ⍝ create starting matrix
  B←⊂A ⍝ Make it a scalar
  C←N/B ⍝ Create a vector of N starting matrices
  ⍝ Tricky part! Collect matrix products across the vector
  ⍝ The matrices are 0 1
  ⍝                  1 1
  ⍝ which correspond to 1, 2, 3, 4 fibonacci numbers
  ⍝ if we multiply this matrix by itself, we get 1 1
  ⍝                                              1 2
  ⍝ matrix: [1; 1] = 0 * 0 + 1 * 1
  ⍝         [1; 2] = 0 * 1 + 1 * 1
  ⍝         [2; 1] = 1 * 0 + 1 * 1
  ⍝         [2; 2] = 1 * 1 + 1 * 1
  ⍝ On the next step the same will happen with the 1 1
  ⍝                                                1 2
  ⍝ matrix. And in the end [2; 2] element of our matrix will be what we want!
  D←+.×/C
  E←⊃D ⍝ D is scalar, we need to disclose it
  NUM←D[2;2]
∇

∇MAIN
  FIB¨⍳20
∇
)OFF
