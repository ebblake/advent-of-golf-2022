# 121
# fmt: off
print(*[sum(s)for s in zip(*((3*((r-o+2)%3)+r-87,3*r+(r+o+2)%3-263)for o,*_,r in open(0).read().encode().split(b'\n')))])
