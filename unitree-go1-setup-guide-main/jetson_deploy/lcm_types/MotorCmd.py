"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class MotorCmd(object):
    __slots__ = ["mode", "q", "dq", "tau", "Kp", "Kd", "reserve"]

    def __init__(self):
        self.mode = 0
        self.q = 0.0
        self.dq = 0.0
        self.tau = 0.0
        self.Kp = 0.0
        self.Kd = 0.0
        self.reserve = [ 0 for dim0 in range(3) ]

    def encode(self):
        buf = BytesIO()
        buf.write(MotorCmd._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">bfffff", self.mode, self.q, self.dq, self.tau, self.Kp, self.Kd))
        buf.write(struct.pack('>3i', *self.reserve[:3]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != MotorCmd._get_packed_fingerprint():
            raise ValueError("Decode error")
        return MotorCmd._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = MotorCmd()
        self.mode, self.q, self.dq, self.tau, self.Kp, self.Kd = struct.unpack(">bfffff", buf.read(21))
        self.reserve = struct.unpack('>3i', buf.read(12))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if MotorCmd in parents: return 0
        tmphash = (0x785055edb7c25175) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if MotorCmd._packed_fingerprint is None:
            MotorCmd._packed_fingerprint = struct.pack(">Q", MotorCmd._get_hash_recursive([]))
        return MotorCmd._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)
