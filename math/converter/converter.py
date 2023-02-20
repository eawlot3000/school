# === BASIC CONVERTER ===


# --------------------------------------------------
# >>>>> DECIMAL -> BINARY/OCTAL <<<<<

def converter(n, to): # <to> must be 2/8
  out = ""
  for i in range(n//2):
    out += str(n%to)
    if n//to == 1:
      break
    n //= to
  return (out+str(n//to))[::-1]

#print(converter(int(input()), int(input())))
# --------------------------------------------------


#  >>>>> BINART -> HEX/octal <<<<<
# binary -> hex
# group the binary by 4 numbers first
# match
# -> find hex values [A:10, B:11, C:12, D:13, ...] // #x = {a: a1, b: b1, c: c1, ...}

# need matches cases in this part

  
# {0001:1, 0010:2, 0011:3, 0100:4, ..}

# --------------------------------------------------
# >>>>> BINARY -> DECIMAL <<<<<
def bi_de(bi):
  out = 0
  for i in range(len(bi)):
    out += int(bi[-i-1])*2**i # py cant take ^ instead of ** lol
  return out
#print(bi_de("1010010010"))
#print(bi_de(str(input())))
# --------------------------------------------------




# --------------------------------------------------
# >>>>> ADDING BINARY <<<<<
def add_bi(a, b):
  return bin(int(a,2) + int(b,2))
#print(add_bi(str(1101), str(1110))[2:])
# --------------------------------------------------

if __name__ == "__main__":
  print("what you wanna do?\n")
  print("convert:\n (choose n)\n")
  print("[1] decimal to binary/octal")
  print("[3] adding binary")

  choose = int(input())

  '''
  if choose == 1:
    print(
    '''

# --------------------------------------------------
# >>>>> ADDING OCTAL & HEX <<<<<
# addition of octal and hex is the same, but for hex you have dict !
o1, o2 = '147', '261'
if len(o1) == len(o2):
  continue






# --------------------------------------------------
