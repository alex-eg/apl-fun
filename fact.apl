⍝ Run as: apl -s -f fact.apl

⍝ This doesn't have check for zero, for example
⍝ And I don't know, how ⍳ handles negative numbers
FACT ← { ×/⍳⍵ } ⍝ Just reducing list of numbers


∇MAIN
  FACT¨⍳10 ⍝ ¨ is foreach. Useful!
∇

MAIN
)OFF ⍝ exits program
