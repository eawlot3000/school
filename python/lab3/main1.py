print('''Apples $1ea
Eggs $0.25ea
Bread $$2.50ea
Meat $10/lbs
Orange Juice $2/litre
''')
ret = [0]*5
for i in range(5):
  ret[i] = int(1.13 * int(input()))
#print('\noutput:', ret, sep='\n')
print('\noutput:', *ret, sep='\n')
#list(map(print, ret))
#tuple(map(print, ret))
