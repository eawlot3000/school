def f_to_c(fahrenheit):
  celsius = (fahrenheit - 32) * 5/9
  return celsius

fahrenheit = float(input("Enter temperature in Fahrenheit: "))
celsius = f_to_c(fahrenheit)
print("Temperature in Celsius: {:.2f}".format(celsius))
