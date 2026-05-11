var express = require("express");
var router = express.Router();

var quizController = require("../controllers/quizController");

router.get("/listarPerguntas", function(req, res){
    quizController.listarPerguntas(req, res);
});

router.post("/salvarResultado", function(req, res){
    quizController.salvarResultado(req, res);
});

router.get("/ranking", function(req, res){
    quizController.buscarRanking(req, res);
});

module.exports = router;