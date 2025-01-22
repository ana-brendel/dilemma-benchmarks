import os
import shutil

folder = "/Users/anabrendel/Desktop/LemmaSynthesis/benchmarks/vfa_merge/tests"

ran = [
    "destruct_merge_by_sorted_cons_leq_2.v",
    "destruct_merge_by_sorted_all_cons_2.v",
    "destruct_merge_by_merge_nil_r_2.v",
    "leq_all_merge_by_Forall_inv_1.v",
    "mergesort_perm_by_Permutation_app.v",
    "mergesort_sorts_by_sorted_merge.v",
    "destruct_merge_by_leq_all_merge_1.v",
    "Forall_trans_by_Forall_inv_tail.v",
    "Forall_trans_by_Forall_inv.v",
    "mergesort_perm_by_Permutation_trans_1.v",
    "single_merge_r_by_leq_all_merge.v",
    "sorted_cons_leq_by_sorted_skip.v",
    "single_merge_r_by_sorted_all_cons.v"
]

new_run = []

# COMPLETED: 13/101

# for test in os.listdir(folder):
#     if not test.endswith(".v"):
#         full = os.path.join(folder,test)
#         rm = f"rm {full}"
#         os.system(rm)

for test in os.listdir(folder):
    if len(new_run) < 6 and test.endswith(".v") and test not in ran:
        if not test.startswith("sorted_merge_by") and test != "destruct_merge_by_Forall_trans_1.v":
            full = os.path.join(folder,test)
            cmd = f"cd {folder} && coqc {full}"
            # os.system(cmd)
            new_run += [test]

index = 1
for i in new_run: 
    print(f"{index}. {i}")
    index += 1

# GIT CLEANUP: git gc --aggressive --prune

# Error in 1. destruct_merge_by_Forall_trans_1 (log_for_destruct_merge1) 
#   need to generalize functions but need to make concrete for QuickChick
