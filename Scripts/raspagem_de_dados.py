TEXTO = []
AUTOR = []
ASSUNTO = []
TITULO = []
ativo = True

for i in TEXTO:
    autor = i[0:6]
    assunto = i[0:9]
    if ativo:
        TITULO.append(i)
        ativo = False
    elif autor == 'Autor:':
        AUTOR.append(i[6:])
        
    elif assunto == 'Assuntos:':
        ASSUNTO.append(i[9:])
        ativo = True

print('TITULO')
for j in TITULO:
    print(j)

print('')

print('AUTOR')
for j in AUTOR:
    print(j)
    
print('')
print('ASSUNTO')
for h in ASSUNTO:
    print(h)
        