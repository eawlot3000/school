def OR(a,b):
  return False if a==b==0 else True
def NOR(a,b):
  return not OR(a,b)
def AND(a,b):
  return True if a==b==1 else False
def NAND(a,b):
  return not AND(a,b)
#return False if a==b==1 else True
def XOR(a,b):
  return True if a==0 or b==0 and a*b==0 else False
def NXOR(a,b):
  return not XOR(a,b)

#if __name__ == '__main__':

case = True
print(!case)

'''
print(AND(1,0))
print(NAND(1,0))
print(AND(0,0))
print(NAND(0,0))
print(XOR(0,0))
print(NXOR(0,0))
print(XOR(1,1))
print(NXOR(1,1))
'''
