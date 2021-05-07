:- dynamic(fact/1).
:- [backward,forward,bd,proof].

if '1-10' and 'comidaTradicional' and 'normal' and 'diasEspeciais' then 'perfil20'.
if 'vegan' and '20+' and 'diasEspeciais' then 'perfil63'.
if 'vegetariana' and '20+' and 'vegetariano' and 'algumasVezes' then 'perfil104'.
if 'fastFood' and 'vegetariano' and '1-10' and 'algumasVezes' then 'perfil86'.
if 'vegetariana' and 'dieta' and 'vegetariano' then 'perfil95'.
if 'vegetariana' and '20+' and 'normal' then 'perfil18'.
if 'vegetariano' and '20+' and 'comidaOriental' then 'perfil84'.
if 'vegetariana' and 'dieta' then 'perfil14'.
if 'fastFood' and 'diasEspeciais' and 'normal' then 'perfil1'.
if 'vegan' and '20+' and 'comidaTradicional' then 'perfil61'.
if 'dieta' and 'fastFood' and '11-20' and 'vegan' then 'perfil41'.
if 'dieta' and '1-10' then 'perfil38'.
if 'vegetariana' and '1-10' and 'diasEspeciais' then 'perfil74'.
if 'vegetariana' and 'diasEspeciais' and 'vegetariano' and '11-20' then 'perfil79'.
if 'diasEspeciais' and '11-20' and 'comidaTradicional' then 'perfil22'.
if 'vegetariana' and '11-20' and 'vegetariano' then 'perfil96'.
if 'vegan' and 'algumasVezes' and '11-20' then 'perfil69'.
if '11-20' and 'normal' and 'comidaTradicional' and 'algumasVezes' then 'perfil24'.
if 'comidaOriental' and 'normal' and 'diasEspeciais' and '20+' then 'perfil34'.
if 'fastFood' and 'normal' and '1-10' then 'perfil3'.
if '' and '' and '' and '' then 'perfil25'.

opcoes(Y):- fact(X), refeicao(X,Y).
opcoes(_).

resposta(P):- demo, findall(Y,opcoes(Y),L1), list_to_set(L1,P).