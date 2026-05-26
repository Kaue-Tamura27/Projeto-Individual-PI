var express = require("express");
var router = express.Router();
var quizController = require("../controllers/quizController");
router.get("/listarPerguntas", function(req, res) {
    quizController.listarPerguntas(req, res);
});
router.post("/salvarResultado", function(req, res) {
    quizController.salvarResultado(req, res);
});
router.get("/resultado/:idUsuario", function(req, res) {
    quizController.buscarResultadoUsuario(req, res);
});
router.get("/estatisticas", function(req, res) {
    quizController.buscarEstatisticas(req, res);
});
module.exports = router;