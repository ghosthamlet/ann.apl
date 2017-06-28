
      ⍝ some operator can't work in NARS2000 like ⍣
      ⍝ use online APL:
      ⍝ http://tryapl.org/
      ⍝ https://plj541.github.io/APL.js/

      l0 ← 4 3 ⍴ 0 0 1  0 1 1  1 0 1  1 1 1
      y ← 4 1 ⍴ 0 0 1 1
      syn0 ← 3 1 ⍴ 0.5069797399 0.5703818579 0.9265880619
      e ← 2.718281828459045
      train ← { d ← l0 +.× ⍵ ⋄ l1 ← 1 ÷ 1 + e * 0 - d ⋄ l1_err ← y - l1 ⋄ l1_delta ← l1_err × l1 × 1 - l1 ⋄ ⍵ + (⍉ l0) +.× l1_delta }
      ⍝ (repeat 1000 (train 1))
      ⍝ (1000⍴1) ∘.train 1
      ⍝ (last (train each 1..1000))
      ⍝ 0⊥train¨ ⍳1000
      ⍝ (apply (repeat train 1000) syn0)
      l1 ← (train⍣1000) syn0