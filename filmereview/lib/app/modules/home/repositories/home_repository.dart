import 'package:filmereview/app/modules/home/model/home_model.dart';
import 'package:filmereview/app/modules/home/repositories/home_repository_interface.dart';

class HomeRepository implements IHomeRepository {
  var listaFilmes = [
    HomeModel(
      titulo: 'Vingadores: Ultimato',
      imagem:
          'https://th.bing.com/th/id/OIP.divZ3NgQjQeqiQNgHA0OLAHaK4?pid=ImgDet&rs=1',
      direcao: 'Joe Russo, Anhony Russo',
      sinopse:
          'As consequências devastadoras dos atos de Thanos, que dizimaram metade das criaturas do universo e destruíram os Vingadores, leva os heróis remanescentes a tomarem uma atitude final na grande conclusão da sequência de vinte dois filmes da Marvel Studios.',
      nota: 5,
      elenco: 'Robert Downey Junior, Chris Evans, Chris Pratt',
      roteiro: 'Christopher Markus',
    ),
    HomeModel(
      titulo: 'A Cabana',
      imagem:
          'https://img.wook.pt/images/a-cabana-wm-paul-young/MXwyMjUzMDJ8MTQ4NjAxODV8MTQ5MDE0MDgwMDAwMA==/500x',
      direcao: 'Stuart Hazeldine',
      sinopse:
          'Em A Cabana, um homem vive atormentado após perder a sua filha mais nova, cujo corpo nunca foi encontrado, mas sinais de que ela teria sido violentada e assassinada são encontrados em uma cabana nas montanhas. Anos depois da tragédia, ele recebe um chamado misterioso para retornar a esse local, onde ele vai receber uma lição de vida.',
      nota: 2.2,
      elenco: 'Sam Worthington, Octavia Spencer, Tim McGraw, Radha Mitchell',
      roteiro: 'Andrew lanham',
    ),
    HomeModel(
      titulo: 'Star Wars: A Vingança dos Sith',
      imagem:
          'https://th.bing.com/th/id/R.0abe2fa79f96ca7431bb951cab16e69f?rik=SDCYcui77FJkxg&riu=http%3a%2f%2fbr.web.img3.acsta.net%2fmedias%2fnmedia%2f18%2f92%2f58%2f33%2f20207204.jpg&ehk=xm1YyW680dwGVlTLCeAvLbAtRiLP7kDva75eqaWnvEk%3d&risl=&pid=ImgRaw&r=0',
      direcao: 'George Lucas',
      sinopse:
          'Em Star Wars: Episódio III, as Guerras Clônicas estão em pleno andamento e as diferenças entre o Conselho Jedi e o Chanceler Palpatine (Ian McDiarmid) aumentam cada vez mais. Anakin Skywalker (Hayden Christensen) mantém um elo de lealdade com Palpatine, ao mesmo tempo em que luta para que seu casamento com Padmé Amidala (Natalie Portman) não seja afetado por esta situação. Seduzido por promessas de poder, Anakin se aproxima cada vez mais de Darth Sidious (Ian McDiarmid) até se tornar o temível Darth Vader. Juntos eles tramam um plano para aniquilar de uma vez por todas com os cavaleiros jedi.',
      nota: 4.5,
      elenco: 'Hayden Christensen, Ewan McGregor, Natalie Portman',
      roteiro: 'George Lucas',
    ),
    HomeModel(
      titulo: 'De Volta para o Futuro',
      imagem:
          'https://th.bing.com/th/id/OIP.OIQHDgIxNMPhiSQ7ukyKowHaKl?pid=ImgDet&rs=1',
      direcao: ' Robert Zemeckis',
      sinopse:
          'Um jovem (Michael J. Fox) aciona acidentalmente uma máquina do tempo construída por um cientista (Christopher Lloyd) em um Delorean, retornando aos anos 50. Lá conhece sua mãe (Lea Thompson), antes ainda do casamento com seu pai, que fica apaixonada por ele. Tal paixão põe em risco sua própria existência, pois alteraria todo o futuro, forçando-o a servir de cupido entre seus pais.',
      nota: 4.7,
      elenco: ' Michael J. Fox, Christopher Lloyd, Lea Thompson',
      roteiro: ' Robert Zemeckis, Bob Gale',
    ),
    HomeModel(
      titulo: 'Operação Big Hero',
      imagem:
          'https://th.bing.com/th/id/OIP.wIyu8yKVb-NolZykC-CxagHaKj?pid=ImgDet&rs=1',
      direcao: 'Don Hall, Chris Williams (II)',
      sinopse:
          'Cidade de San Fransokyo, Estados Unidos. Hiro Hamada (voz de Ryan Potter) é um garoto prodígio que, aos 13 anos, criou um poderoso robô para participar de lutas clandestinas, onde tenta ganhar um bom dinheiro. Seu irmão, Tadashi (voz de Daniel Henney), deseja atraí-lo para algo mais útil e resolve levá-lo até o laboratório onde trabalha, que está repleto de invenções. Hiro conhece os amigos de Tadashi e logo se interessa em estudar ali. Para tanto ele precisa fazer a apresentação de uma grande invenção, de forma a convencer o professor Callahan (James Cromwell) a matriculá-lo. Entretanto, as coisas não saem como ele imaginava e Hiro, deprimido, encontra auxílio inesperado através do robô inflável Baymax (voz Scott Adsit), criado pelo irmão.',
      nota: 4.5,
      elenco: 'Marcos Mion, Kéfera Buchmann, Robson Nunes',
      roteiro: 'Jordan Roberts, Daniel Gerson',
    ),
    HomeModel(
      titulo: 'Batman Begins',
      imagem:
          'https://th.bing.com/th/id/R.d7410f343b3f87ee11c748f3360abe13?rik=d%2bHLCxzjjT6Vbg&pid=ImgRaw&r=0',
      direcao: 'Christopher Nolan',
      sinopse:
          'Marcado pelo assassinato de seus pais quando ainda era criança, o milionário Bruce Wayne (Christian Bale) decide viajar pelo mundo em busca de encontrar meios que lhe permitam combater a injustiça e provocar medo em seus adversários. Após retornar a Gotham City, sua cidade-natal, ele idealiza seu alter-ego: Batman, um justiceiro mascarado que usa força, inteligência e um arsenal tecnológico para combater o crime.',
      nota: 5,
      elenco: 'Christian Bale, Katie Holmes, Michael Caine',
      roteiro: 'David S. Goyer, Christopher Nolan',
    ),
    HomeModel(
      titulo: '007 Sem Tempo para Morrer',
      imagem:
          'https://th.bing.com/th/id/OIP.F-odLj9QfLxMpx9zm4DWjAHaJQ?pid=ImgDet&rs=1',
      direcao: 'Cary Joji Fukunaga',
      sinopse:
          'Em 007 - Sem Tempo Para Morrer, depois de sair do serviço ativo da MI6, James Bond (Daniel Craig) vive tranquilamente na Jamaica, mas como nem tudo dura pouco, a vida do espião 007 é agitada mais uma vez. Felix Leiter (Jeffrey Wright) é um velho amigo da CIA que procura o inglês para um pequeno favor de ajudá-lo em uma missão secreta. O que era pra ser apenas uma missão de resgate de um grupo de cientistas acaba sendo mais traiçoeira do que o esperado, levando o agente inglês 007 ao misterioso vilão, Safin (Rami Malek), que utiliza de novas armas de tecnologia avançada e extremamente perigosa.',
      nota: 4,
      elenco: 'Daniel Craig, Rami Malek, Léa Seydoux',
      roteiro: 'Neal Purvis, Robert Wade',
    ),
    HomeModel(
      titulo: 'Sem Limites',
      imagem:
          'https://th.bing.com/th/id/R.39c69f176a10ae109058d3261c6a9606?rik=Rjm8LfCg2EwN5A&pid=ImgRaw&r=0',
      direcao: 'Neil Burger',
      sinopse:
          'Eddie Morra (Bradley Cooper) sofre de bloqueio de escritor. Um dia, ele reencontra na rua seu ex-cunhado, Vernon (Johnny Whitworth), que lhe apresenta um remédio revolucionário que permite o uso de 100% da capacidade cerebral. O efeito é imediato em Eddie, pois ele passa a se lembrar de tudo que já leu, ouviu ou viu em sua vida. A partir de então ele consegue aprender outras línguas, fazer cálculos complicados e escrever muito rapidamente, mas para manter este ritmo precisa tomar o remédio todo dia. Seu desempenho chama a atenção do empresário Carl Van Loon (Robert De Niro), que resolve contar com sua ajuda para fechar um dos maiores negócios da história.',
      nota: 4.4,
      elenco: 'Bradley Cooper, Robert De Niro, Abbie Cornish',
      roteiro: 'Leslie Dixon',
    ),
    HomeModel(
      titulo: 'Homem Formiga',
      imagem:
          'https://th.bing.com/th/id/R.cacfd695ed890b8358699e066568f943?rik=OtodDXH1Ei%2fczQ&riu=http%3a%2f%2fwww.serifacomunicacao.com.br%2fwp-content%2fuploads%2f2015%2f07%2fhomem-formiga-poster-branco-camundongo.jpg&ehk=R0vNA9%2bpY%2fAqL4I9Qthh0Ny9F4lCqIOZFw7DDLIABr4%3d&risl=&pid=ImgRaw&r=0',
      direcao: 'Peyton Reed',
      sinopse:
          'Dr. Hank Pym (Michael Douglas) é o inventor da fórmula/ traje que permite o encolhimento. Anos depois da descoberta, precisa impedir que seu ex-pupilo Darren Cross (Corey Stoll) consiga replicar o feito e vender a tecnologia para HYDRA. Dr. Pym escolhe o trambiqueiro Scott Lang (Paul Rudd) à usar o traje do Homem-Formiga. Lang, que acabou de sair da prisão e está com dificuldade de achar um trabalho honesto, aceita.',
      nota: 4.1,
      elenco: 'Paul Rudd, Evangeline Lilly, Corey Stoll',
      roteiro: 'Adam McKay, Paul Rudd',
    ),
    HomeModel(
      titulo: 'o Lobo de Wall Street',
      imagem:
          'https://th.bing.com/th/id/OIP.IuDmgiiALyrP9iYLTrRe4wHaLH?pid=ImgDet&rs=1',
      direcao: 'Martin Scorsese',
      sinopse:
          'Durante seis meses, Jordan Belfort (Leonardo DiCaprio) trabalhou duro em uma corretora de Wall Street, seguindo os ensinamentos de seu mentor Mark Hanna (Matthew McConaughey). Quando finalmente consegue ser contratado como corretor da firma, acontece o Black Monday, que faz com que as bolsas de vários países caiam repentinamente. Sem emprego e bastante ambicioso, ele acaba trabalhando para uma empresa de fundo de quintal que lida com papéis de baixo valor, que não estão na bolsa de valores. É lá que Belfort tem a ideia de montar uma empresa focada neste tipo de negócio, cujas vendas são de valores mais baixos mas, em compensação, o retorno para o corretor é bem mais vantajoso. Ao lado de Donnie (Jonah Hill) e outros amigos dos velhos tempos, ele cria a Stratton Oakmont, uma empresa que faz com que todos enriqueçam rapidamente e, também, levem uma vida dedicada ao prazer.',
      nota: 4.5,
      elenco: 'Leonardo DiCaprio, Jonah Hill, Margot Robbie',
      roteiro: 'Terence Winter, Jordan Belfort (II)',
    ),
    HomeModel(
      titulo: 'Avatar',
      imagem:
          'https://3.bp.blogspot.com/_AaXAEggFP-U/TTtYvlA3HkI/AAAAAAAAADY/p_GdkwjXDwE/s1600/avatar-%2Bfrench%2Bposter.jpg',
      direcao: 'James Cameron',
      sinopse:
          'Avatar conta a história de um ex-fuzileiro naval confinado a uma cadeira de rodas e que esta em um planeta extraterrestre, cheio de exóticas formas de vida. Como Avatar, uma mente humana em um corpo extraterrestre. Logo Jake Sully enfrentará a maior de suas provações, ao comandar um conflito épico que decidirá nada menos que o destino de um mundo inteiro.',
      nota: 2,
      elenco: 'Sam Worthington, Zoe Saldana, Sigourney Weaver',
      roteiro: 'James Cameron',
    ),
    HomeModel(
      titulo: 'Eu sou a Lenda',
      imagem:
          'https://th.bing.com/th/id/R.d4b2ca814c108c88477214237936b0ff?rik=mGuuB9%2bVsiQddw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-fDZlSUugDSI%2fTtPBThRpfYI%2fAAAAAAAAAeQ%2fCcDZF0ZjJ6g%2fs1600%2feu_sou_a_lenda.jpg&ehk=gKJjxQypiuhqVfgUVmZZM83fIr0VZ46EKIOfZqZTtb4%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1',
      direcao: 'Francis Lawrence',
      sinopse:
          'Um terrível vírus incurável, criado pelo homem, dizimou a população de Nova York. Robert Neville (Will Smith) é um cientista brilhante que, sem saber como, tornou-se imune ao vírus. Há 3 anos ele percorre a cidade enviando mensagens de rádio, na esperança de encontrar algum sobrevivente. Robert é sempre acompanhado por vítimas mutantes do vírus, que aguardam o momento certo para atacá-lo. Paralelamente ele realiza testes com seu próprio sangue, buscando encontrar um meio de reverter os efeitos do vírus',
      nota: 4.4,
      elenco: 'Will Smith, Alice Braga, Charlie Tahan',
      roteiro: 'Akiva Goldsman, Richard Matheson',
    ),
    HomeModel(
      titulo: 'Quarteto Fantastisco',
      imagem:
          'https://th.bing.com/th/id/R.5e5a7391014c27e5e32a6b68dde47041?rik=w7Z%2fXb3eeEoIkg&riu=http%3a%2f%2f2.bp.blogspot.com%2f_BpWOcp7pKCY%2fTKtuMght_HI%2fAAAAAAAAABg%2fFnFMbXdRU0M%2fs1600%2fquarteto_fantastico_nacional_filmes_2005_img_poster.jpg&ehk=Vek0hSStmTgGUAZld4Q3ie3gHMdxtlHROYbmdDQNuSo%3d&risl=&pid=ImgRaw&r=0',
      direcao: 'Tim Story',
      sinopse:
          'Em Quarteto Fantástico, um desastre atinge uma nave espacial, fazendo com que seus quatro tripulantes sofram modificações em seu organismo de forma a ganharem poderes especiais. Reed Richards (Ioan Gruffudd), o líder do grupo, passa a ter a capacidade de esticar seu corpo feito borracha. Sue Storm (Jessica Alba), sua ex-namorada, ganha poderes que a permitem ficar invisível e criar campos de força. Johnny Storm (Chris Evans), irmão de Sue, pode aumentar o calor do seu corpo, enquanto que Ben Grimm (Michael Chiklis) tem seu corpo transformado em pedra e ganha uma força sobre-humana. Ao retornar à Terra após o acidente logo os novos poderes começam a se manifestar, fazendo com que todos tenham que se adaptar a eles e também à condição de celebridades que os poderes lhes trazem.',
      nota: 3.6,
      elenco: 'Ioan Gruffudd, Jessica Alba, Michael Chiklis',
      roteiro: 'Mark Frost, Stan Lee',
    ),
    HomeModel(
      titulo: 'Duna',
      imagem:
          'https://th.bing.com/th/id/R.0a6928390f5f3ba83eee74bf0c1efa16?rik=csJqzNWS2KD44g&pid=ImgRaw&r=0',
      direcao: 'Denis Villeneuve',
      sinopse:
          'Inspirado na série de livros de Frank Herbert, Duna se passa em um futuro longínquo. O Duque Leto Atreides administra o planeta desértico Arrakis, também conhecido como Duna, lugar de única fonte da substância rara chamada de "melange", usada para estender a vida humana, chegar a velocidade da luz e garantir poderes sobrehumanos. Para isso ele manda seu filho, Paul Atreides (Timothée Chalamet), um jovem brilhante e talentoso que nasceu para ter um grande destino além de sua imaginação, e seus servos e concubina Lady Jessica (Rebecca Fergunson), que também é uma Bene Gesserit. Eles vão para Duna, afim de garantir o futuro de sua família e seu povo. Porém, uma traição amarga pela posse da melange faz com que Paul e Jessica fujam para os Fremen, nativos do planeta que vivem nos cantos mais longes do deserto.',
      nota: 4.1,
      elenco: 'Timothée Chalamet, Rebecca Ferguson, Oscar Isaac',
      roteiro: 'Jon Spaihts, Denis Villeneuve',
    ),
    HomeModel(
      titulo: 'Marley e Eu',
      imagem:
          'https://4.bp.blogspot.com/-VxgvRTVwKzM/UbDn_G8rqTI/AAAAAAAAC28/7i4LDWAj5V4/s1600/Marley+e+Eu.jpg',
      direcao: 'David Frankel',
      sinopse:
          'John (Owen Wilson) e Jennifer Grogan (Jennifer Aniston) casaram-se recentemente e decidiram começar nova vida em West Palm Beach, na Flórida. Lá, eles trabalham em jornais concorrentes, compram um imóvel e enfrentam os desafios de uma vida de casal. Indeciso sobre sua capacidade em ser pai, John busca o conselho de seu colega Sebastian (Eric Dane), que sugere que compre um cachorro para a esposa. John aceita a sugestão e adota Marley, um labrador de 5 kg que logo se transforma em um grande cachorro de 45 kg, o que torna a casa deles um caos.',
      nota: 4.5,
      elenco: 'Owen Wilson, Jennifer Aniston, Eric Dane + Cachorro',
      roteiro: 'Don Roos, Scott Frank',
    ),
    
  ];
  @override
  Future<List<HomeModel>> getFilmes() async {
    return Future.value(listaFilmes);
  }
}
