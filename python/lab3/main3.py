#!/usr/bin/env python3
amount, year, s = 0, int(input()) + 18, 0

if 2009<=year<=2022:
  if 2016<=year<=2018:
    s, amount = 1, 5500*(2019-year)
  if year==2015:
    s, amount = 2, 10000
  if 2013<=year<=2014:
    s, amount = 3, 5500*(2015-year)
  if 2009<=year<=2012:
    s, amount = 4, 5000*(2013-year)
  
  each = [20000,11000,10000,16500,24000]
  for i in range(1, s+1):
    amount += each[-i]
  print(f'born in {year-18}, 18 at {year}, total: {amount}.')
  #print("born in {}, 18 at {}, total: {}.".format(year-18, year, amount))
else:
  print("born in {}, 18 at {}, total: {}".format(year-18, year, 4*5000+2*5500+10000+3*5500+4*6000))


'''
#amount = 0
if year<2009:
  print(4*5000+2*5500+10000+3*5500+4*6000)

else:
  while 2009<= year<= 2022:
    if 2009<=year<=2012:
      amount += 5000*(2013-year)
      year += 2013-year
    if 2013<=year<=2014:
      amount += 5500*(2015-year)
      year += 2015-year
  
    if year == 2015:
      amount += 10000*1
      year += 2016-year
  
    if 2016<=year<= 2018:
      amount += 5500*(2019-year)
      year += 2019-year
  
    if 2019<=year<=2022:
      amount += 6000*(2023-year)
      year += 2023-year
  print(amount)
'''
