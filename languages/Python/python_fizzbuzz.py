def fizzbuzz(n):
  """
  指定された数までのFizzBuzzを出力する関数

  Args:
    n (int): FizzBuzzを行う上限の数
  """
  for i in range(1, n+1):
    # 1からnまでの数を順番に処理する
    # nを使わない場合は、range(1, 101)でもいい
    # 3の倍数であればFizz、5の倍数であればBuzz、3と5の倍数であればFizzBuzzを出力する
    
    if i % 3 == 0 and i % 5 == 0:
      print("FizzBuzz")
    elif i % 3 == 0:
      print("Fizz") 
    elif i % 5 == 0:
      print("Buzz")
    else:
      print(i)
      
fizzbuzz(100)
