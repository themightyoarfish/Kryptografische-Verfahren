cryptotext = 'PLTIRIERTFEIAIASSNOHKTSNRYEPSETIOVNANSE'
k = 5; w = len(cryptotext)
cleartext = ''.join(
    [''.join(
            [cryptotext[i] for i in range(j, w, k)]) 
        for j in range(0, k)]
)
print(cleartext)
