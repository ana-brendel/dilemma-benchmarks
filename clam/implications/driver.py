import os

# CLEANING MEMORY: git gc --aggressive --prune 

folder = os.getcwd()

coq = lambda x: f"cd {folder} && coqc {x}"

mapping = {}

theorem = 1

def clean():
    for t in os.listdir(folder):
        if not (t.endswith(".py") or t.endswith(".v") or t.endswith(".txt") or t.endswith("results")):
            full = os.path.join(folder,t)
            os.system(f"rm {full}")

for t in os.listdir(folder):
    if t.endswith(".v"):
    #    os.system(coq(t))
       clean()
    #    for file in os.listdir(folder):
    #        if file not in mapping and file.endswith(".vos"):
    #            mapping[file] = t

# for file in mapping:
#     print(f"{file} <<-- {mapping[file]}")



# Fails
# goal38_1.v -- [in CoqInterface.process_satisfiable_results] File did not compile
# goal41_3.v -- [in CoqInterface.process_satisfiable_results] File did not compile
# goal41_2.v -- [in CoqInterface.process_satisfiable_results] File did not compile
# goal50_2.v -- [in CoqInterface.process_satisfiable_results] File did not compile
# goal41_5.v -- [in CoqInterface.process_satisfiable_results] File did not compile