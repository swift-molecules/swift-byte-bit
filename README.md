# Byte Bit

Narrow integration between the Byte and Bit domains.

The `Byte Bit` product exposes a byte as a `Bit.Pattern<UInt8>.Mask` and provides
least-significant-bit-first indexed access to its eight bits:

```swift
import Byte_Bit

let byte = Byte(0b1010_0001)
let lowBit: Bit = byte[0]
let mask: Bit.Pattern<UInt8>.Mask = byte.bits
```

`swift-byte` remains the owner of byte representation, while `swift-bit`
remains the owner of `Bit` and bit-pattern operations. This package owns only
the projections that require both domains.
