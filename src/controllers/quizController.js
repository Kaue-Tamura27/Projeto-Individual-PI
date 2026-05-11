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
    var fkUsuario = req.body.fkUsuario;

    quizModel.salvarResultado(perfilFinal, fkUsuario)
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