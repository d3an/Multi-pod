import sys

k = sys.stdin.readlines()
sentence = ''
for i in range(len(k)):
    sentence+= k[i]

sentence = list(sentence)
st=''

for i in range(len(sentence)):
    if (sentence[i] == '\n'):
        sentence[i] = ' '
    st+=sentence[i]


st = st.split(' ')

print(st)

for x in range(len(st)):
    try:
        if ((len(st[x+1]) + len(st[x]) + 1)  <= 16):
            st[x] += ' ' + st[x+1]
            st.pop(x+1)
            if ((len(st[x + 1]) + len(st[x]) + 1) <= 16):
                st[x] += ' ' + st[x + 1]
                st.pop(x + 1)
    except:
        pass


print('{')
for i in range(len(st)):
    padding = 16 - len(st[i])
    for x in range(padding):
        st[i] += ' '
    print("\"" + st[i][:-1] + "\",\n",end='')
print('};')


print()
print(len(st))
