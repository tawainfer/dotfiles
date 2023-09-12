import os
import re

def is_int(s):
  try:
    int(s, 10)
  except ValueError:
    return False
  return True

def format_color_code(code):
  code = code.strip().lstrip('#').lower()
  if len(code) == 3:
    code = code[0] * 2 + code[1] * 2 + code[2] * 2
  return code

def check_color_code(code):
  return True if re.match('^[\da-f]{6}$', code) else False

def convert_to_rgb(code):
  code = format_color_code(code)
  rgb = list()
  if check_color_code(code):
    for i in range(0, 6, 2):
      rgb.append(int(code[i:i + 2], 16))
  return rgb

def ask_input_mode():
  mode = 'code'
  if input('Please select color code or rgb. [C/r]: ').lower() == 'r':
    mode = 'rgb'

  print(f'{mode} mode')
  return mode
    
if __name__ == '__main__':
    mode = ask_input_mode()

    rgb = list()
    if mode == 'code':
      while not rgb:
        rgb = convert_to_rgb(input('Please enter a color code: '))
    elif mode == 'rgb':
      ptn = ['red', 'green', 'blue']
      for i in range(3):
        while len(rgb) <= i:
          value = input(f'Please enter the {ptn[i]} value: ')
          if is_int(value) and 0 <= int(value) <= 255:
            rgb.append(int(value))

    with open(f'../.host_rgb', 'w') as f:
      for v in rgb:
        f.write(f'{v} ')
