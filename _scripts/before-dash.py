import fileinput


for line in fileinput.input(inplace=True, backup='.bak'):
    if fileinput.isfirstline():
       do_print = True
       dash_num = 0
    if do_print:
        print (line, end='')
    if line.startswith("---"):
        dash_num += 1
    if dash_num == 2:
        do_print = False

