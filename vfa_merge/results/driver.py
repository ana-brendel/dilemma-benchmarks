import os
import shutil

folder = "/home/anabrendel/Desktop/benchmarks/vfa_merge/tests"

ran = [
    "mergesort_sorts_by_sorted_merge.v",
    "merge_perm_by_Permutation_app_comm_2.v",
    "leq_all_merge_by_Forall_inv_tail_1.v",
    "single_merge_r_by_sorted_cons_leq.v",
    "merge_perm_by_Permutation_refl_2.v",
    "single_merge_r_by_destruct_sorted.v",
    "single_merge_l_by_sorted_all_cons.v",
    "single_merge_r_by_merge_nil_l.v",
    "destruct_merge_by_leq_all_merge_1.v",
    "merge_perm_by_merge_nil_l.v", 
    "destruct_merge_by_sorted_all_cons_1.v",
    "destruct_merge_by_merge_nil_r_3.v",
    "leq_all_merge_by_Forall_inv_2.v", 
]

error = [
    "merge_perm_by_Permutation_trans_2.v", # Constr kind FIX not handled in _ (Playground.ml)
    "destruct_merge_by_leq_all_merge_1", # Quickchick error and segmentation fault -- not sure what causes
]

new_run = []

# COMPLETED: 13/100

# for test in os.listdir(folder):
#     if not (test.endswith(".v") or test.endswith(".txt")):
#         full = os.path.join(folder,test)
#         rm = f"rm {full}"
#         os.system(rm)

# for t in os.listdir("/home/anabrendel/Desktop/benchmarks/vfa_merge/results"):
#     if t.endswith(".txt"):
#         f = t.removeprefix("log_for_").removesuffix(".txt")
#         print(f"\"{f}.v\",")

# prune = "cd /home/anabrendel/Desktop/benchmarks && git gc --aggressive --prune"

# for test in os.listdir(folder):
#     if test.endswith(".v") and test not in ran and test not in error and len(new_run) < 5:
#         if not test.startswith("sorted_merge_by"):
#             full = os.path.join(folder,test)
#             cmd = f"cd {folder} && coqc {full}"
#             os.system(cmd)
#             new_run += [test]
#             print("LAST COMPLETED (" + str(len(new_run)) + "): " + test )

# index = 1
# for i in new_run: 
#     print(f"\"{i}\", # {index}")
#     index += 1

# GIT CLEANUP: git gc --aggressive --prune

