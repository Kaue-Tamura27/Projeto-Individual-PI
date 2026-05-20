let perguntas = [];
let perguntaAtual = 0;

let perfis = {
    "Chef Tradicional": 0,
    "Chef Gourmet": 0,
    "Chef Criativo": 0,
    "Chef Raiz": 0,
    "Chef Fit": 0,
    "Chef Confeiteiro": 0,
    "Chef Aventureiro": 0
};

async function carregarQuiz() {
    try {
        const resposta = await fetch("/quiz/listarPerguntas");
        console.log("Resposta recebida:", resposta);
        const dados = await resposta.json();
        console.log("DADOS DO BANCO:");
        console.log(dados);
        perguntas = organizarPerguntas(dados);
        console.log("PERGUNTAS ORGANIZADAS:");
        console.log(perguntas);
        mostrarPergunta();
    } catch (erro) {
        console.log("ERRO NO QUIZ:");
        console.log(erro);
        document.getElementById("divPergunta").innerHTML =
            "Erro ao carregar perguntas";
    }
}

function organizarPerguntas(dados) {
    let perguntasOrganizadas = [];
    dados.forEach(registro => {
        let perguntaExistente =
            perguntasOrganizadas.find(
                p => p.idPergunta == registro.idPergunta
            );
        if (!perguntaExistente) {
            perguntasOrganizadas.push({
                idPergunta: registro.idPergunta,
                pergunta: registro.pergunta,
                alternativas: [
                    {
                        descricao: registro.descricao,
                        perfil: registro.perfil
                    }
                ]
            });
        } else {
            perguntaExistente.alternativas.push({
                descricao: registro.descricao,
                perfil: registro.perfil
            });
        }
    });

    return perguntasOrganizadas;
}
function mostrarPergunta() {
    console.log("MOSTRANDO PERGUNTA");
    const pergunta = perguntas[perguntaAtual];
    console.log(pergunta);
    document.getElementById("divPergunta").innerHTML =
        pergunta.pergunta;
    document.getElementById("spanQuestaoAtual").innerHTML =
        perguntaAtual + 1;
    document.getElementById("spanTotalQuestoes").innerHTML =
        perguntas.length;
    let htmlAlternativas = "";
    pergunta.alternativas.forEach((alternativa) => {
        htmlAlternativas += `
            <label class="opcao">
                <input
                    type="radio"
                    name="opcao"
                    value="${alternativa.perfil}"
                >
                ${alternativa.descricao}
            </label>
        `;
    });
    document.getElementById("divOpcoes").innerHTML =
        htmlAlternativas;
}
function responder() {
    const opcaoSelecionada =
        document.querySelector('input[name="opcao"]:checked');
    if (!opcaoSelecionada) {
        alert("Escolha uma alternativa!");
        return;
    }
    const perfilEscolhido = opcaoSelecionada.value;
    perfis[perfilEscolhido]++;
    perguntaAtual++;
    if (perguntaAtual < perguntas.length) {
        mostrarPergunta();
    } else {
        finalizarQuiz();
    }
}
function finalizarQuiz() {
    let maiorPontuacao = 0;
    let perfilFinal = "";
    for (let perfil in perfis) {
        if (perfis[perfil] > maiorPontuacao) {
            maiorPontuacao = perfis[perfil];
            perfilFinal = perfil;
        }
    }
    document.querySelector(".quiz-container").innerHTML = `
        <div class="resultado-final">
            <h1>Seu resultado foi:</h1>
            <h2>${perfilFinal}</h2>
        </div>
    `;
}