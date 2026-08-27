public import Bit
public import Byte

extension Byte {

    /// A bit-pattern mask over this byte's underlying value.
    @inlinable
    public var bits: Bit.Pattern<UInt8>.Mask {
        Bit.Pattern<UInt8>.Mask(underlying)
    }

    /// Reads a bit in least-significant-bit-first order.
    ///
    /// - Precondition: `index` is in `0..<8`.
    @inlinable
    public subscript(_ index: Int) -> Bit {
        precondition((0..<UInt8.bitWidth).contains(index), "Bit index out of bounds")
        return (underlying >> UInt8(index)) & 1 == 1 ? Bit.one : Bit.zero
    }
}
