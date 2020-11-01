# Parachute Deploy Test I
<sup>August 13, 2020</sup>

**Task**:<br>&emsp;
    Test nose cone deployment mechanism

**Method**:<br>&emsp;
    The nose cone was assembled with nylon fishing line with nichrome wire wrapped around each tie down line.
    The nichrome wire was then supplied current, heating it up and melting the nylon wires.

**3d Models Used**:
- [Nose Cone](https://github.com/DusterTheFirst/rocketry/blob/a1a50608c714fe1a907a077f69319fac23ef29f5/rockets/slider/renders/Nose%20Cone.stl)
- [Parachute Holder](https://github.com/DusterTheFirst/rocketry/blob/a1a50608c714fe1a907a077f69319fac23ef29f5/rockets/slider/renders/Parachute%20Holder.stl)

**Findings**:<br>&emsp;
    The nichrome wire is very reliable in heating up, but not enough that we can guarantee
    two nichrome wires to cut through their hold down strings at the same time. In the test,
    only one of the wires was cut before the nosecone flew off. When the nose cone was released,
    it remained attached to the hold down assembly due to one of the hold down lines remaining uncut.
    This lead us to understand that in order to use nichrome wire as a release mechanism,
    we must design the release in such a way that it will only use one hold down point.

**Changes To Implement**
- Redesign Nose Cone [(done)](https://github.com/DusterTheFirst/rocketry/blob/00949badd6df8fbdd533ba6b04284b056b241a8f/rockets/slider/renders/Nose%20Cone.stl)
    - One, central, tie down point
    - Attachment point(s) for parachute(s)
- Redesign parachute holding mechanism [(done)](https://github.com/DusterTheFirst/rocketry/blob/00949badd6df8fbdd533ba6b04284b056b241a8f/rockets/slider/renders/Parachute%20Holding.stl)
    - One central tie down point
    - Container(s) for parachute(s)
    - Gap around where nichrome wire will be placed as to not melt any PLA plastic