# --------------------------------------------------
# >>>>> ADDING OCTAL & HEX <<<<<
# addition of octal and hex is the same, but for hex you have dict !
o1, o2 = '147', '261'
out = []
while len(o1) >= 1:
  adding = 0
  for i in range(len(o1)):
    adding = int(o1[-1]) + int(o2[-1])
    out += [adding%8]
    o1, o2 = o1[:len(o1)-1], o2[:len(o1)-1]
    print(o1, o2)

print(f"\n\nadd --> {oct(int(o1, 8) + (int(o2, 8)))[2:]}")
print(f"sub --> {oct(int(o1, 8) - (int(o2, 8)))[2:]}")







