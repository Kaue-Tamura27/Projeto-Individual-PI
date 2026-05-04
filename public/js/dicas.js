const dicas = [
"Exagerar no alho ao cozinhar e se arrepender depois tem solução: coloque na panela alguns talos de salsinha e leve novamente ao fogo, para que o gosto do alho seja absorvido.",

"Para eliminar a baba do quiabo, lave-o ainda inteiro, seque-o e coloque-o numa tigela com um pouco de suco de limão, deixando repousar durante 15 min. Depois lave ligeiramente, corte e cozinhe.",

"Se o bolo queimou, passe um ralador de queijo na parte queimada até retirar a crosta.",

"Para cenouras e aipos murchos, mergulhe-os em água gelada com uma colher de chá de mel por uma hora.",

"Para batatas fritas sequinhas, coloque em água fervente por alguns minutos e depois em água com gelo antes de fritar.",

"Para tirar cheiro de fritura, aqueça canela em pó em uma frigideira seca.",

"Se o purê ficar aguado, adicione leite em pó.",

"Para congelar crepes, intercale com papel e embrulhe em alumínio.",

"Para manter a couve-flor branca, adicione leite à água do cozimento.",

"Guarde cogumelos em saco de papel para manter frescor.",

"Para soltar biscoitos da assadeira, aqueça levemente no fogão.",

"Para descongelar carne, coloque em água com sal por uma hora.",

"Use aveia ou farinha de rosca para untar formas ao invés de trigo.",

"Para descongelar carne moída mais rápido, adicione sal.",

"Passe banana na farinha antes de fritar para não encharcar.",

"Congele farinha de trigo para preservar qualidade.",

"Para empanar frango sem sujeira, use saco plástico.",

"Adicione vinagre na fritura para reduzir absorção de gordura.",

"Para polenta sem grumos, use água fria e mexa até ferver.",

"Adicione óleo na água do macarrão para evitar que grude.",

"Para cobertura rápida, misture creme de leite e iogurte.",

"Coloque ovos em água fria antes de ferver para evitar rachaduras.",

"Use vinagre ao cozinhar peixe para reduzir cheiro forte.",

"Congele frutas cítricas para facilitar raspas.",

"Só congele alimentos frescos e bem preparados.",

"Para dessalgar carne seca rapidamente, ferva com sal por alguns minutos.",

"Use vinagre ao cozinhar ovos rachados.",

"Costure aves com fio dental para melhor firmeza.",

"Passe maionese no frango antes de assar para dourar melhor.",

"Adicione açúcar ao café para preservar aroma.",

"Fure linguiças antes de fritar para não estourarem.",

"Adicione vinagre ao fritar torresmo para ficar crocante.",

"Cozinhe carne seca no leite para amaciar.",

"Evite congelar alimentos como maionese, gelatina, batata cozida e ovos com casca.",

"Congele ervas em cubos de gelo com água.",

"Use folhas de louro para conservar cereais.",

"Adicione bicarbonato no feijão para engrossar o caldo.",

"Use água de coco em doces para mais sabor.",

"Adicione manteiga ao doce de coco para evitar açúcar cristalizado.",

"Use manteiga para recuperar doce de leite talhado.",

"Ferva e descasque pimentões para melhor digestão.",

"Adicione açúcar em legumes e molhos para melhorar o sabor.",

"Teste ovos na água com sal para verificar frescor.",

"Molhe a faca ao cortar ovos cozidos para evitar quebrar.",

"Descongele peixe no leite para melhorar sabor.",

"Use folhas de alface para absorver gordura da sopa.",

"Coloque um pires na saladeira para evitar excesso de líquido.",

"Desinfete verduras com vinagre ou água sanitária diluída.",

"Passe limão em frutas cortadas para evitar escurecimento.",

"Use vinagre ou leite para afastar mosquinhas das frutas."
];

function exibirDicas() {
  const div = lista_dicas;
  div.innerHTML = "";

  dicas.forEach((dica, index) => {
    div.innerHTML += `
      <div class="card-dica">
        <h3>Dica ${index + 1}</h3>
        <p>${dica}</p>
      </div>
    `;
  });
}

exibirDicas();