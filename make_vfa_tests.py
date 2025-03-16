import os

read = lambda x: open(x, "r").read().split("\n")

def write(file,content):
    f = open(file, "w")
    f.write(content)
    f.close()

def get_test(line):
    splits = line.split("$")
    assert (len(splits) == 3)
    return splits[1].strip()

def create_tests(test_folder,src_content):
    tests = []
    for line in src_content:
        if line.__contains__("HELPER LEMMA"):
            test = get_test(line)
            tests += [test]

    for t in tests:
        content_to_write = ["From LFindToo Require Import LFindToo.",""]
        found = False
        done = False
        for line in src_content:
            if not done:
                content_to_write += [line]
            if line.__contains__(t):
                found = True
                content_to_write += ["findlemma. Admitted.","" "(*"]
            if line.strip() == "Qed.":
                done = found
        file = os.path.join(test_folder,f"{t}.v")
        write(file,"\n".join(content_to_write + ["*)"]))

# comment_format = "(* HELPER LEMMA $ theorem_by_lemma_k $ *)"

benchmarks_folder = os.getcwd()

def make_tests(vfa_test):
    src = f"{benchmarks_folder}/vfa_{vfa_test}/source.v"
    test_folder = f"{benchmarks_folder}/vfa_{vfa_test}/tests"
    create_tests(test_folder,read(src))
