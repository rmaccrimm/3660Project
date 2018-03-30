from random import randint
import names

efile = open('employee.txt', 'w+')
for i in range(20):
    idnum = '{:0>7}'.format(randint(0, 1e7-1))
    phone = '({:0>3})-{:0>3}-{:0>4}'.format(randint(0, 999),
                                            randint(0, 999),
                                            randint(0, 9999))
    first = names.get_first_name()
    last = names.get_last_name()
    jid = str(randint(1, 2))
    efile.write('\t'.join([idnum, last, first, phone, jid]) + '\n')
efile.close()



