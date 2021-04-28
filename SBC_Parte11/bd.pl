:- dynamic(fact/1).
:- [backward,forward].

refeicao('perfil1',[ ['   Hamburguer
                       \n Norte
                       \n Normal
                       \n Fast-Food
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Sanduiche de carne, podendo ser carne de vaca ou de porco, normalmente carne moida com um conjunto variado de condimentos e tambem com variados acompanhamentos. ' ]]).

refeicao('perfil2',[ ['   Sanduiche Mista
                       \n Centro
                       \n Normal
                       \n Fast-Food
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Sanduiche de queijo e fiambre podendo levar com manteiga e oregaos dependendo das suas preferencias. (dica – fica sempre bem aquecida)' ]]).

refeicao('perfil3',[ ['   Baguete Mista
                       \n Sul
                       \n Normal
                       \n Fast-Food
                       \n 1-10€
                       \n Comida do Cotidiano
                       \n Descrição: Baguete de queijo e fiambre. No entanto, pode adicionar mais condimentos a sua escolha. ' ]]).

refeicao('perfil4',[ ['  Pizza
                       \n Centro
                       \n Normal
                       \n Fast-Food
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: E uma preparação culinaria que consiste num disco de massa fermentada de farinha de trigo, coberto com molho de tomate e os ingredientes variados que normalmente incluem algum tipo de queijo, carnes preparadas ou defumadas e ervas, normalmente orégano ou manjericao, tudo assado em forno. ' ]]).

refeicao('perfil5',[ ['  Massa Primavera
                       \n Norte
                       \n Normal
                       \n Fast-Food
                       \n 11-20€
                       \n Dieta
                       \n Descrição: O macarrão e sempre a opção de quem nao tem tempo. Entao aposta na Massa Primavera, feita com aqueles ingredientes que sempre tem na geladeira. Da para comer fria tambem. ' ]]). 

refeicao('perfil7',[ ['  Lasanha
		       \n Sul
                       \n Normal
                       \n Fast-Food
                       \n 11-20€
                       \n Comida do Cotidiano
                       \n Descrição: Uma boa comida para se fazer para o jantar ao meio da semana. ' ]]).

refeicao('perfil7',[ [' Rodizio de Pizza
                       \n Norte
                       \n Normal
                       \n Fast-Food
                       \n 20+€
                       \n Dias especiais
                       \n Descrição: Trata-se de uma refeicao onde vai ter ao seu dispor todas as pizzas que pretender comer e experimentar ate novos sabores.' ]]).

refeicao('perfil8',[ [' Sushi
                       \n Centro
                       \n Normal
                       \n Fast-Food
                       \n 20+€
                       \n Dieta
                       \n Descrição: Uma comida para fugir a norma.' ]]).

refeicao('perfil9',[ [' Rodizio de Carnes
                       \n Sul
                       \n Normal
                       \n Fast-Food
                       \n 20+€
                       \n Comida do Cotidiano
                       \n Descrição: Uma refeicao onde vai ter ao seu dispor todas as carnes que tiver disposto a comer.' ]]).
 
 
refeicao('perfil10',[ [' Salada de tomate com mozzarella
                       \n Norte
                       \n Normal
                       \n Vegetariana
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Uma simples salada com tomate e queijo mozzarella. ' ]]).

refeicao('perfil11',[ [' Omelete com queijo e abacate
                       \n Centro
                       \n Normal
                       \n Vegetariana
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Uma simples omelete com queijo e abacate. ' ]]).

refeicao('perfil12',[ [' Salada de feijao-preto com chimichurri
                       \n Sul
                       \n Normal
                       \n Vegetariana
                       \n 1-10€
                       \n Comida do Cotidiano
                       \n Descrição: Uma otima salada de feijao-preto acompanhada com chimichurri, uma delicia.' ]]).

refeicao('perfil13',[ [' Croquetes de vegetais com salada marroquina
                       \n Norte
                       \n Normal
                       \n Vegetariana
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Trata-se de uma salada com receita de origem marroquina acompanhada de croquetes vegetais.' ]]).

refeicao('perfil14',[ [' Peixinhos da horta
                       \n Centro
                       \n Normal
                       \n Vegetariana
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Peixinhos da horta uma bela refeicao para aventurar o seu paladar. ' ]]).

refeicao('perfil15',[ [' Pizza com burrata e pesto
                       \n Sul
                       \n Normal
                       \n Vegetariana
                       \n 11-20€
                       \n Comida do Cotidiano
                       \n Descrição: Uma pizza fora do normal, com burrata e pesto.' ]]).

refeicao('perfil16',[ [' Croquetes com arroz de tomate
                       \n Norte
                       \n Normal
                       \n Vegetariana
                       \n 20+€
                       \n Dias especiais
                       \n Descrição: Croquetes com arroz de tomate delicioso.' ]]).

refeicao('perfil17',[ [' Frittata de pimentos e queijo
                       \n Centro
                       \n Normal
                       \n Vegetariana
                       \n 20+€
                       \n Dieta
                       \n Descrição: Um prato diferente, frittat de pimentos e queijo, otima refeição para descobrir novos sabores. ' ]]).

refeicao('perfil18',[ [' Tortellini de espinafres com ovo
                       \n Sul
                       \n Normal
                       \n Vegetariana
                       \n 20+€
                       \n Comida do Cotidiano
                       \n Descrição: Tortellini de espinafres com ovo, uma refeição que se ainda não provou ja vai tarde.' ]]).
 
refeicao('perfil19',[ [' Bife no Prego
                       \n Centro
                       \n Normal
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Comida tradicional e que sabe sempre bem, trata-se de um bife no pao, acompanhado de ovo estrelado. ' ]]).

refeicao('perfil20',[ [' Bacalhau a Bras
                       \n Norte
                       \n Normal
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Nunca e demais o famoso bacalhau acompanhado de batata frita de palito e umas natas. ' ]]).

refeicao('perfil21',[ [' Prego no Prato
                       \n Sul
                       \n Normal
                       \n Comida Tradicional
                       \n 1-10€
                       \n Comida do Cotidiano
                       \n Descrição: Uma excelente refeicao que o vai deixar satisfeito, um bife no pao acompanhado de arroz, batata frita e um ovo estrelado.' ]]).

refeicao('perfil22',[ [' Francesinha
                       \n Norte
                       \n Normal
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: A rainha das comidas tradicionais, a melhor sanduiche de todas, existem varias variacoes da receita e do molho que a acompanha mas no norte estao as melhores. ' ]]).

refeicao('perfil23',[ [' Cozido a Portuguesa
                       \n Centro
                       \n Normal
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Uma bela refeicao que junta uma variacao de carnes e legumes, fica sempre bem quando acompanhada com um bom vinho.' ]]).

refeicao('perfil24',[ [' Polvo Cozido
                       \n Sul
                       \n Normal
                       \n Comida Tradicional
                       \n 11-20€
                       \n Comida do Cotidiano
                       \n Descricao: Uma refeição dificil de fazer mas uma delicia.' ]]).

refeicao('perfil25',[ [' Arroz de Pato
                       \n Centro
                       \n Normal
                       \n Comida Tradicional
                       \n 20+€
                       \n Dias especiais
                       \n Descrição: Uma boa refeicao para um bom almoco de domingo acompanhado com os seus.' ]]).

refeicao('perfil26',[ [' Tripas a moda do Porto
                       \n Norte
                       \n Normal
                       \n Comida Tradicional
                       \n 20+€
                       \n Dieta
                       \n Descrição: Uma feijoada acompanhada com as tripas do porco e umas chouricas. ' ]]).




refeicao('perfil27',[ [' Vitela Assada
                       \n Sul
                       \n Normal
                       \n Comida Tradicional
                       \n 20+€
                       \n Comida do Cotidiano
                       \n Descrição: Uma boa refeicao para acompanhar um bom vinho. ' ]]).
 
refeicao('perfil28',[ [' Rodizio de Yakitori de Frango
                       \n Norte
                       \n Normal
                       \n Comida Oriental
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Podem ser usadas varias partes do frango como peito, pescoço, figado, moela, entre outros. Espeto de frango muito conhecido nas festas japonesas. ' ]]).

refeicao('perfil29',[ [' Porcao de Shimeji
                       \n Centro
                       \n Normal
                       \n Comida Oriental
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Para voce que e fa do famoso rodizio de comida japonesa ' ]]).

refeicao('perfil30',[ [' Tempura de camarão com matcha
                       \n Sul
                       \n Normal
                       \n Comida Oriental
                       \n 1-10€
                       \n Comida do Cotidiano
                       \n Descrição: Pode ser servido como entrada de uma grande refeicao ou como petisco em um happy hour ' ]]).

refeicao('perfil31',[ [' Spicy Yellowtail
                       \n Norte
                       \n Normal
                       \n Comida Oriental
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Preparada com avocado, pepino e wasabi, a receita do restaurante Makoto rende 32 pecas e leva 1h20 para ficar pronta ' ]]).

refeicao('perfil32',[ [' Lamen Vegetariano
                       \n Centro
                       \n Normal
                       \n Comida Oriental
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Leva shimeji, aspargos, broto de feijao e, como nao poderia faltar, tofu ' ]]).

refeicao('perfil33',[ [' Yakisoba Crocante
                       \n Sul
                       \n Normal
                       \n Comida Oriental
                       \n 11-20€
                       \n Comida do Cotidiano
                       \n Descrição: Perfeita para dar uma esquentada nos dias frios, a receita do chef Lucas Silva Santana, do Temaki Fry, ganha crocancia, uma vez que a massa e levada a chapa quente, depois de cozida. O sabor tipico do Japão vem do oleo de gergelim, junto ao tempero oriental. ' ]]).

refeicao('perfil34',[ [' Mazegohan
                       \n Norte
                       \n Normal
                       \n Comida Oriental
                       \n 20+€
                       \n Dias especiais
                       \n Descrição: Otimo para uma refeição em família, o mazegohan é um risoto japonês que leva frango em cubos, shitake seco e algas. ' ]]).

refeicao('perfil35',[ [' Salmao com shoyu
                       \n Centro
                       \n Normal
                       \n Comida Oriental
                       \n 20+€
                       \n Dieta
                       \n Descrição: Aromas, contraste de sabores... esta receita de salmão ao molho oriental vai despertar seus sentidos.' ]]).

refeicao('perfil36',[ [' Yakisoba Caseiro de Frango 
                       \n Sul
                       \n Normal
                       \n Comida Oriental
                       \n 20+€
                       \n Comida do Cotidiano
                       \n Descrição: Frango, cenoura, couve-flor, brocolis e acelga. ' ]]).

refeicao('perfil37',[ [' Hamburguer vegano de arroz e feijao
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Arroz e feijao, cebola, quinoa, azeite, sal, especiarias a gosto e beterraba, que da uma coloracao toda especial para o hamburguer.' ]]).

refeicao('perfil38',[ [' Salada de cogumelos com laranja
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Cogumelos laminados com azeite, vinagre, sal, pimenta, laranjas descascadas e cortadas em gomos, sementes de chia e croutons' ]]).

refeicao('perfil39',[ [' Salada de espinafres com couve-roxa
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 1-10€
                       \n Prato do quotidiano
                       \n Descrição: Pistachio, folhas de espinafre, pera cortada em cubos, sal, pimenta, couve roxa e sumo de laranja' ]]).

refeicao('perfil40',[ [' Hamburguer com pimentão verde mexicano
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Chalotas medias, dentes de alho, grao de bico, oleo de abacate, chilis verdes, cominhos, pimenta em po, coentros e tortilha amarela' ]]).

refeicao('perfil41',[ [' Arroz integral com tofu mexido
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Arroz integral + tofu mexido com alho em po, molho de soja, polpa de tomate, curcuma e sal + puree de couve-flor + feijao preto com cominhos' ]]).

refeicao('perfil42',[ [' Sanduiche com recheio de tofu fumado 
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n 11-20€
                       \n Prato do quotidiano
                       \n Descrição: Lentilhas cozidas, nozes, alho, pasta de amendoim, pimentao vermelho, tofu, alface e pao' ]]).

refeicao('perfil43',[ [' Hamburgueres de inhame marroquino               
        		\n Norte
                       \n Vegan
                       \n Fast-Food
                       \n +20€
                       \n Dias especiais
                       \n Descrição: Inhame ralado, alho, coentros, gengibre, cominhos, coentro, canela, acafrao, grao de bico, aveia, sal, pimenta, aminoacidos de coco e tahine' ]]).

refeicao('perfil44',[ [' Taco vegan com abobora butternut
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n +20€
                       \n Dieta
                       \n Descrição: Paprika, alho, cominhos, oregaos, cravinho, pimenta, ananas, abóbora butternut, tortilhas e couve verde ' ]]).

refeicao('perfil45',[ [' Bolo vegan tres leites
                       \n Norte
                       \n Vegan
                       \n Fast-Food
                       \n +20€
                       \n Prato do quotidiano
                       \n Descrição: Farinha, canela, bicabornato de sodio, leite de coco, baunilha, fermento, molho de maca, aquafaba, creme tartaro' ]]).

refeicao('perfil46',[ [' Muffins com cobertura de cacau
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Oleo de coco, banana, farinha de aveia, soja, xarope de agave ' ]]).

refeicao('perfil47',[ [' Filetes de Flor de Bananeira
                       \n Sul
                       \n Vegan
                       \n Vegetariana
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Flor de bananeira ja marinada em algas, mergulhada no polme. Apos isso e so fritar e deliciar.' ]]).



refeicao('perfil48',[ [' Sopa de courgette, ervilhas e espargos
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n 1-10€
                       \n Prato do quotidiano
                       \n Descrição: Cebola, ervilhas, espargos, hortela, sementes de girassol, courgette, azeite e agua' ]]).

refeicao('perfil49',[ [' Estufado de legumes com castanhas
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Castanhas, espargos, chalotas, pimenta, avela, cogumelos, noz moscada, cogumelos e tomilho' ]]).

refeicao('perfil50',[ [' Cebolas recheadas com arroz
                       \n Mediterrâneo
                       \n Vegan
                       \n Vegetariana
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Cebolas roxas, arroz basmati, lentilhas, salada de espinafres, sal, pimenta, alho' ]]).

refeicao('perfil51',[ [' Alho francês à brás
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n 11-20€
                       \n Prato do quotidiano
                       \n Descrição: Tofu esfarelado com alho picado e batata cozida ou frita. No final. colocar queijo violife sobre o tofu à brás' ]]).

refeicao('perfil52',[ [' Bolo vegan de chocolate e framboesa
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n +20€
                       \n Dias especiais
                       \n Descrição: Farinha, cacau, leite de amendoa, fermento, framboesa, chocolate para culinaria, bicarbonato de sódio, xarope de agave, leite de coco' ]]).

refeicao('perfil53',[ [' Arroz de tomate com salada de grao
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n +20€
                       \n Dieta
                       \n Descrição: Arroz de tomate, pimento e feijao preto + salada de grao (com cebola e salsa) + cogumelos salteados em alho e azeite com sumo de limão 
' ]]).

refeicao('perfil54',[ [' Massa com seitan
                       \n Norte
                       \n Vegan
                       \n Vegetariana
                       \n +20€
                       \n Prato do quotidiano
                       \n Descrição: Esparguete, seitan, espinafres, cogumelos laminados, cerveja, pimenta, caril, molho de soja, sal, cebola e alho' ]]).

refeicao('perfil55',[ [' Croquetes de tremoço 
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Batata assada (com pele) e croquetes de tremoço + salada de milho e cebola ' ]]).

refeicao('perfil56',[ [' Sonhos de cenoura
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: Leite de aveia, farinha, cenoura cozida e reduzida a pure, canela e óleo de coco' ]]).

refeicao('perfil57',[ [' Massa no forno com feijao preto
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 1-10€
                       \n Prato do quotidiano
                       \n Descrição: Massa no forno com tomate e queijo vegetal + feijao preto salteado em cebola, alho e azeite (com cominhos)' ]]).

refeicao('perfil58',[ [' Sopa de agriao
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 11-20€
                       \n Prato do quotidiano
                       \n Descrição: Cebola, courgette, tomilho, amêndoas laminadas, agriao e couve flor' ]]).

refeicao('perfil59',[ [' Legumes grelhados em azeite aromatizado
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Espargos, pimentao, courgette, cogumelos brancos, pimento vermelho, salsa, cebola roxa, flor de sal e tomate cherry ' ]]).

refeicao('perfil60',[ [' Arroz de pato vegan
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Para simular o pato utiliza-se jaca ou seita.' ]]).

refeicao('perfil61',[ [' Bolonhesa de lentilhas
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n +20€
                       \n Prato do quotidiano
                       \n Descrição: Lentilhas, alho, massa penne, cogumelos laminados, folhas de espinafres, polpa de tomate e pimentao doce' ]]).

refeicao('perfil62',[ [' Paella de legumes
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n +20€
                       \n Dieta
                       \n Descrição: Cebola, alho, aipo, açafrao, abóbora de manteiga, bimis, vinho tinto, tomate, ervilhas, arroz para risoto e cogumelos' ]]).

refeicao('perfil63',[ [' Empada de quinoa
                       \n Norte
                       \n Vegan
                       \n Comida Tradicional
                       \n +20€
                       \n Dias especiais
                       \n Descrição: Farinha , azeite, sal, tomilho, abóbora aos cubos, espinafres, miolo de noz, tomate cherry, sementes de linhaça, arandos desidratados e agua' ]]).

refeicao('perfil64',[ [' Caril de jaca
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 1-10€
                       \n Dieta
                       \n Descrição: A jaca adiciona um sabor pouco acentuado, o ideal para juntar um tempero forte, como o caril. Jaca com caril, arroz e um bocado de picante.' ]]).

refeicao('perfil65',[ [' Tempura
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 1-10€
                       \n Dias especiais
                       \n Descrição: amido de milho, farinha, fermento, agua com gas, oleo e camarao vegan' ]]).

refeicao('perfil66',[ [' Coxinha vegana com curry
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 1-10€
                       \n Prato do quotidiano
                       \n Descrição: Alho, azeite, farinha, cebola, sal, curry, batata e jaca' ]]).

refeicao('perfil67',[ [' Yakisoba vegano
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Macarrao, cenoura, repolho roxo, pimentão, amido de milho, molho de soja e cebola' ]]).

refeicao('perfil68',[ [' Sushi vegano 
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 11-20€
                       \n Dias especiais
                       \n Descrição: Folhas nori, arroz roxo, tofu, cenoura, polpa de abacate, pimentao verde e alface' ]]).

refeicao('perfil69',[ [' Sukiyaki vegan
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n 11-20€
                       \n Prato do quotidiano
                       \n Descrição: Molho de soja, acucar, caldos de vegetais, tofu, cogumelos, cebola, aipo, bambu, macarrao, arroz e mirin' ]]).

refeicao('perfil70',[ [' Javaher Polo vegan                  
  		       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n +20€
                       \n Dieta
                       \n Descrição: Frutas secas, castanhas, arroz persa, damascos, cerejas, sementes de goji, pistachio, especiarias e tofu ' ]]).

refeicao('perfil71',[ [' Ash e Reshteh vegan                  
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n +20€
                       \n Dias especiais
                       \n Descrição: Lentilhas, feijao, tofu, espinafre, folhas de beterraba, cebola, oleo de menta, kashk, macarrão e shevid.' ]]).

refeicao('perfil72',[ [' Yosenabe vegan
                       \n Norte
                       \n Vegan
                       \n Comida Oriental
                       \n +20€
                       \n Prato do quotidiano
                       \n Descrição: Kombu, shiro miso, vegetais, macarrao, alho, leite de soja, batata doce, oleo de amendoim, entre outros' ]]).

refeicao('perfil73',[ [' Pizza vegetariana
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 1-10€
                       \n Dias Especiais
                       \n Descrição: Pizza de courgette e ovo' ]]).
 
refeicao('perfil74',[ [' Croquetes com arroz de tomate
                       \n Norte
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 1-10€
                       \n Dias Especiais
                       \n Descrição: Croquetes com sobras de arroz de tomate' ]]).
 
refeicao('perfil75',[ [' Ovos escalfados
                       \n Centro
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dias Especiais
                       \n Descrição: Ovos escalfados com tomate e feijao encarnado' ]]).
 
refeicao('perfil76',[ [' Caril de lentilhas
                       \n Centro
                       \n Vegetariano
                       \n Comida Oriental
                       \n 1-10€
                       \n Dias Especiais
                       \n Descrição: Caril de lenteinhas verdes e oleo de coco' ]]).
 
refeicao('perfil77',[ [' Hamburguer Vegetariano
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 11-20€
                       \n Dias Especiais
                       \n Descrição: Hamburguer vegetariano de cogumelos frescos, cebola e tomate' ]]).
 
refeicao('perfil78',[ [' Pizza com peras e gorgonzola
                       \n Sul
                       \n Vegetariano
                       \n Fast-Food
                       \n 20€+
                       \n Dias Especiais
                       \n Descrição: Pizza com peras, queijo gorgonzola e rucula']]).
 
 
refeicao('perfil79',[ [' Salada de tomate
                       \n Norte
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 11-20€
                       \n Dias Especiais
                       \n Descrição: Salada de tomate com mozzarella' ]]).
 
refeicao('perfil80',[ [' Quiche de Tofu
                       \n Centro
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 20€ +
                       \n Dias Especiais
                       \n Descrição: Quiche de tofu com cogumelos e espinafres' ]]).
 
refeicao('perfil81',[ [' Ovos de tomatada
                       \n Centro
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dias Especiais
                       \n Descrição: Ovos de tomatada com um toque de cebola cortada as fatias e dentes de alho picados' ]]).
 
refeicao('perfil82',[ [' Rojoes de Seitan à Portuguesa
                       \n Sul
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 20€ +
                       \n Dias Especiais
                       \n Descrição: Rojoes vegetarianos a Seitan']]).
 
refeicao('perfil83',[ [' Cogumelos Xadrez
                       \n Norte
                       \n Vegetariano
                       \n Comida Oriental
                       \n 11-20€
                       \n Dias Especiais
                       \n Descrição: Cogumelos com shoyu e pimentao']]).
 
refeicao('perfil84',[ [' Sushi
                       \n Norte
                       \n Vegetariano
                       \n Comida Oriental
                       \n 20€ +
                       \n Dias Especiais
                       \n Descrição: Sushi variado com varias peças vegetarianas']]).
 
 
 
refeicao('perfil85',[ [' Pizza com legumes e frutas
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Pizza com legumas e diversas frutas']]).
 
refeicao('perfil86',[ [' Hamburguer de Tofu
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 1-10€
                       \n Prato do Quotidiano
                       \n Descrição: Hamburguer de tofu com cebola']]).
 
refeicao('perfil87',[ [' Salada vegetariana
                       \n Norte
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Salada de brocolos e feta']]).
 
refeicao('perfil88',[ [' Legumes assados
                       \n Norte
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 1-10€
                       \n Prato do Quotidiano
                       \n Descrição: Legumes assados com quinoa e queijo']]).
 
refeicao('perfil89',[ [' Salada de brocolos
                       \n Sul
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Salada de brocolos com cenoura e couve roxa']]).
 
refeicao('perfil90',[ [' Salada de batata doce
                       \n Sul
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 1-10€
                       \n Prato do Quotidiano
                       \n Descrição: Salada de batata doce com abacate e frutos secos' ]]).
 
 
 
refeicao('perfil91',[ [' Yakissoba
                       \n Norte
                       \n Vegetariano
                       \n Comida Oriental
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Prato composto por macarrao, legumes, brocolos e cenouras' ]]).
 
refeicao('perfil92',[ [' Peixe Vegano
                       \n Sul
                       \n Vegetariano
                       \n Comida Oriental
                       \n 1-10€
                       \n Prato do Quotidiano
                       \n Descrição: Peixe vegano de tofu marinada com nori' ]]).
 
refeicao('perfil93',[ [' Tosta de Espinafres
                       \n Centro
                       \n Vegetariano
                       \n Fast-Food
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Tosta de espinafres com feijao manteiga e ovos' ]]).
 
refeicao('perfil94',[ [' Tosta de Mozzarella
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 11-20€
                       \n Prato do Quotidiano
                       \n Descrição: Tosta de mozzarella com tomate' ]]).
 
refeicao('perfil95',[ [' Sopa de tomate
                       \n Sul
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 11-20€
                       \n Dieta
                       \n Descrição: Sopa de tomate com lentilhas' ]]).
 
refeicao('perfil96',[ [' Peixinhos da horta
                       \n Sul
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 11-20€
                       \n Prato do Quotidiano
                       \n Descrição: Petisco com feijao-verde envolvido em farinha de milho e frito em azeite' ]]).
 
refeicao('perfil97',[ [' Croquetes Vegetarianos
                       \n Sul
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 11-20€
                       \n Dieta           
                       \n Descrição: Croquetes de vegetais com salada marroquina' ]]).
 
refeicao('perfil98',[ [' Croquetes de Tomate
                       \n Norte
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 11-20€
                       \n Prato do Quotidiano
                       \n Descrição: Croquetes feitos com tomate' ]]).
 
refeicao('perfil99',[ [' Kibe Vegetariano
                       \n Centro
                       \n Vegetariano
                       \n Comida Oriental
                       \n 1-10€
                       \n Dieta
                       \n Descrição: Kive com cenoura, ricota e pimentao' ]]).
 
refeicao('perfil100',[ [' Shakshuka
                       \n Sul
                       \n Vegetariano
                       \n Comida Oriental
                       \n 11-20€
                       \n Prato do Quotidiano
                       \n Descrição: Prato israelita com pao, ovos e tomate']]).
 
refeicao('perfil101',[ [' Frittata
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 20€+
                       \n Dieta
                       \n Descrição: Prato de frittata de pimentos e queijo com pao' ]]).
 
refeicao('perfil102',[ [' Arjamolho com pimentos
                       \n Norte
                       \n Vegetariano
                       \n Fast-Food
                       \n 20€+
                       \n Prato do Quotidiano
                       \n Descrição: Receita rapida de arjamolho com pimentos e cebolada' ]]).
 
 
refeicao('perfil103',[ [' Strogonoff de Berinjela
                       \n Centro
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 20€+
                       \n Dieta
                       \n Descrição: Strogonoff de beringela e salsa' ]]).
 
refeicao('perfil104',[ [' Paella Vegetariana
                       \n Norte
                       \n Vegetariano
                       \n Comida Vegetariana
                       \n 20€+
                       \n Prato do Quotidiano
                       \n Descrição: Paella tradicional composta por vegetais' ]]).
 
refeicao('perfil105',[ [' Risotto Vegetariano
                       \n Norte
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 20€+
                       \n Dieta
                       \n Descrição: Risotto de cogumelos e couve kale' ]]).
 
refeicao('perfil106',[ [' Ovos em Ninho de Batata-Doce
                       \n Norte
                       \n Vegetariano
                       \n Comida Tradicional
                       \n 20€+
                       \n Prato do Quotidiano
                       \n Descrição: Ovos com batata-doce e legumes' ]]).
 
refeicao('perfil107',[ [' Sashimi Vegetariano
                       \n Norte
                       \n Vegetariano
                       \n Comida Oriental
                       \n 20€+
                       \n Dieta
                       \n Descrição: Sashimi com beringela e salada' ]]).
 
refeicao('perfil108',[ [' Macarrao Vegetariano
                       \n Norte
                       \n Vegetariano
                       \n Comida Oriental
                       \n 20€+
                       \n Prato do Quotidiano
                       \n Descrição: Macarrao de bifum com shiitake' ]]).




