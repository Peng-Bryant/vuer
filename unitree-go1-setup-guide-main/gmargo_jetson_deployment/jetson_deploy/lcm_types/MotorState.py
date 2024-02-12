"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class MotorState(object):
    __slots__ = ["mode", "q", "dq", "ddq", "tauEst", "q_raw", "dq_raw", "ddq_raw", "temperature", "reserve"]

    def __init__(self):
        self.mode = 0
        self.q = 0.0
        self.dq = 0.0
        self.ddq = 0.0
        self.tauEst = 0.0
        self.q_raw = 0.0
        self.dq_raw = 0.0
        self.ddq_raw = 0.0
        self.temperature = 0
        self.reserve = [ 0 for dim0 in range(2) ]

    def encode(self):
        buf = BytesIO()
        buf.write(MotorState._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">bfffffffb", self.mode, self.q, self.dq, self.ddq, self.tauEst, self.q_raw, self.dq_raw, self.ddq_raw, self.temperature))
        buf.write(struct.pack('>2i', *self.reserve[:2]))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != MotorState._get_packed_fingerprint():
            raise ValueError("Decode error")
        return MotorState._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = MotorState()
        self.mode, self.q, self.dq, self.ddq, self.tauEst, self.q_raw, self.dq_raw, self.ddq_raw, self.temperature = struct.unpack(">bfffffffb", buf.read(30))
        self.reserve = struct.unpack('>2i', buf.read(8))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if MotorState in parents: return 0
        tmphash = (0x116f0fd2ba8b634e) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if MotorState._packed_fingerprint is None:
            MotorState._packed_fingerprint = struct.pack(">Q", MotorState._get_hash_recursive([]))
        return MotorState._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)
