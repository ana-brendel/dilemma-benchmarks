import os

folder = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/lia/implications/tests"

ran = [
    # "leftist_mergea_by_rank_right_height_5.v",
    "leftist_mergea_by_rank_right_height_1.v",
    "leftist_merge_by_leftist_mergea.v",
    "heap_insert_multi.v",
    "leftist_mergea_by_rank_right_height_6.v",
    "leftist_mergea_by_rank_right_height_2.v",
    "leftist_hinsert_by_leftist_merge.v"
]

new_run = []

# for test in os.listdir(folder):
#     if not test.endswith(".v"):
#         full = os.path.join(folder,test)
#         rm = f"rm {full}"
#         os.system(rm)

for test in os.listdir(folder):
    if len(new_run) < 7 and test.endswith(".v") and test not in ran:
        full = os.path.join(folder,test)
        cmd = f"cd {folder} && coqc {full}"
        os.system(cmd)
        new_run += [test]

index = 1
for i in new_run: 
    print(f"{index}. {i}")
    index += 1

# GIT CLEANUP: git gc --aggressive --prune