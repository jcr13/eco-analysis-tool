#! /usr/bin/env python

f = open('ss.dat','r')

l = f.readlines()[0].rstrip()

ok = False
res = []
for i,s in enumerate(l):
    if ok and s not in 'HE':
        ok = False
        end = i
        res.append("{}-{}".format(ini,end))

    if (s in 'HE'):
        if not ok:
            ok = True
            ini = i + 1
        if (ok):
            pass


print ":{}".format(",".join(res))
