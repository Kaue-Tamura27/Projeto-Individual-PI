var database = require("../database/config");

function listarPerguntas() {

    var instrucao = `
    
        SELECT
            p.idPergunta,
            p.pergunta,
            a.idAlternativa,
            a.descricao,
            a.perfil

        FROM pergunta_personalidade p

        JOIN alternativa_personalidade a
            ON p.idPergunta = a.fkPergunta

        ORDER BY p.idPergunta;

    `;
    return database.executar(instrucao);
}
function salvarResultado(

    perfilFinal,
    tradicional,
    gourmet,
    criativo,
    raiz,
    fit,
    confeiteiro,
    aventureiro,
    porcentagemTradicional,
    porcentagemGourmet,
    porcentagemCriativo,
    porcentagemRaiz,
    porcentagemFit,
    porcentagemConfeiteiro,
    porcentagemAventureiro,
    fkUsuario
) 

    var instrucao = `

        INSERT INTO resultado_personalidade
        (

            fkUsuario,
            perfilFinal,

            tradicional,
            gourmet,
            criativo,
            raiz,
            fit,
            confeiteiro,
            aventureiro,

            porcentagemTradicional,
            porcentagemGourmet,
            porcentagemCriativo,
            porcentagemRaiz,
            porcentagemFit,
            porcentagemConfeiteiro,
            porcentagemAventureiro

        )

        VALUES
        (

            ${fkUsuario},
            '${perfilFinal}',

            ${tradicional},
            ${gourmet},
            ${criativo},
            ${raiz},
            ${fit},
            ${confeiteiro},
            ${aventureiro},

            ${porcentagemTradicional},
            ${porcentagemGourmet},
            ${porcentagemCriativo},
            ${porcentagemRaiz},
            ${porcentagemFit},
            ${porcentagemConfeiteiro},
            ${porcentagemAventureiro}

        );

    `;

    return database.executar(instrucao);
}

function buscarRanking() {

    var instrucao = `

        SELECT
            perfilFinal,
            COUNT(*) AS quantidade

        FROM resultado_personalidade

        GROUP BY perfilFinal

        ORDER BY quantidade DESC;

    `;

    return database.executar(instrucao);
}

module.exports = {

    listarPerguntas,
    salvarResultado,
    buscarRanking

};