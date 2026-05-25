var quizModel = require("../models/quizModel");

function listarPerguntas(req, res) {

    quizModel.listarPerguntas()
        .then(function(resultado){
            res.json(resultado);
        })
        .catch(function(erro){
            console.log(erro);
            res.status(500).json(erro);
        });
}

function salvarResultado(req, res) {

    var perfilFinal = req.body.perfilFinal;

    var tradicional = req.body.tradicional;
    var gourmet = req.body.gourmet;
    var criativo = req.body.criativo;
    var raiz = req.body.raiz;
    var fit = req.body.fit;
    var confeiteiro = req.body.confeiteiro;
    var aventureiro = req.body.aventureiro;

    var porcentagemTradicional = req.body.porcentagemTradicional;
    var porcentagemGourmet = req.body.porcentagemGourmet;
    var porcentagemCriativo = req.body.porcentagemCriativo;
    var porcentagemRaiz = req.body.porcentagemRaiz;
    var porcentagemFit = req.body.porcentagemFit;
    var porcentagemConfeiteiro = req.body.porcentagemConfeiteiro;
    var porcentagemAventureiro = req.body.porcentagemAventureiro;

    var fkUsuario = req.body.fkUsuario;

    quizModel.salvarResultado(

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

    .then(function(resultado){

        res.json(resultado);

    })

    .catch(function(erro){

        console.log(erro);

        res.status(500).json(erro);

    });
}

function buscarRanking(req, res){

    quizModel.buscarRanking()
        .then(function(resultado){
            res.json(resultado);
        })
        .catch(function(erro){
            console.log(erro);
            res.status(500).json(erro);
        });
}

module.exports = {
    listarPerguntas,
    salvarResultado,
    buscarRanking
}