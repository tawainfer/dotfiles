import os
import json
import subprocess

def format_package_list(package_lists, parent_key, child_key):
  for package in package_lists[parent_key]:
    if package in package_lists[child_key]:
      package_lists[child_key].remove(package)
      print(f'erase {package} from {child_key}')

if __name__ == '__main__':
  script_dir = os.path.dirname(os.path.abspath(__file__))
  os.chdir(script_dir)

  package_lists = dict()
  with open('../list/package.json', 'r') as rf:
    package_lists = json.load(rf)
  
  keys = ['minimal', 'normal', 'full', 'ignore', 'unknown']
  for key in keys:
    if key not in package_lists:
      package_lists[key] = set()

  for key in package_lists:
    package_lists[key] = set(package_lists[key])

  for i, parent_key in enumerate(keys):
    for j, child_key in enumerate(keys):
      if i < j:
        format_package_list(package_lists, parent_key, child_key)

  result = subprocess.run(['pacman', '-Qqe'], capture_output = True, text = True)
  packages = result.stdout.strip().split('\n')

  for package in packages:
    exists = False
    for key in keys:
      if  package in package_lists[key]:
        exists = True
    
    if not exists:
      package_lists['unknown'].add(package)
      print(f'add {package} to unknown')
      
  for key in package_lists:
    package_lists[key] = list(package_lists[key])
    package_lists[key].sort()

  os.makedirs('../tmp', exist_ok=True)
  with open('../tmp/new_package.json', 'w') as wf:
    json.dump(package_lists, wf, indent = 2)