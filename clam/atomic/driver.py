import os

# CLEANING MEMORY: git gc --aggressive --prune 

folder = os.getcwd()

coq = lambda x: f"cd {folder} && coqc {x}"

mapping = {}

def clean():
    for t in os.listdir(folder):
        if not (t.endswith(".py") or t.endswith(".v") or t.endswith(".txt")):
            full = os.path.join(folder,t)
            os.system(f"rm {full}")

for t in os.listdir(folder):
    if len(mapping) < 10 and t.endswith(".v"):
       os.system(coq(t))
       clean()
       for file in os.listdir(folder):
           if file not in mapping and file.endswith(".vos"):
               mapping[file] = t

for file in mapping:
    print(f"{file} <<-- {mapping[file]}")