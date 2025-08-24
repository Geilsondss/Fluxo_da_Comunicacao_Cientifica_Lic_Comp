#SUGIRO QUE LEIA A ANOTAÇÃO "registro_metodologico.md" PARA ENTENDER MELHOR ESTE SCRIPT

#Código especificamente para o repositorio da Universidade Estadual do Ceará
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
for W in TITULO:
    print(W)
print('')

print('AUTOR')
for j in AUTOR:
    print(j)
print('')

print('ASSUNTO')
for h in ASSUNTO:
    print(h)


#Código especificamente para o repositorio da UNIVERSIDADE FEDERAL DE SANTA MARIA
TEXTO = []
AUTOR = []
DATA = []
TITULO = []
CONT = 0

for i in TEXTO:
    if CONT == 0:
        TITULO.append(i)
        CONT = 1
    elif CONT == 1:
        PARENTESE = i.rfind('(')
        AUTOR.append(i[:PARENTESE])
        DATA.append(i[PARENTESE+1:-1])
        CONT = 2
    elif CONT == 2:
        CONT = 0

print('TITULO')
for W in TITULO:
    print(W)
print('')

print('AUTOR')
for j in AUTOR:
    print(j)
print('')

print('DATA')
for h in DATA:
    print(h)
        


