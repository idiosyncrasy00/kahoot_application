const express = require("express")
const router = express.Router()

const {
  createGame, getGame, deleteGame, updateGame, addPlayer
} = require("../controller/game")

router
  .route("/")
//  .get(getGames)
  .post(createGame)

router
  .route("/:gameId/players")
  .patch(addPlayer)

router
  .route("/:id")
  .get(getGame)
  .patch(updateGame)
  .delete(deleteGame)

module.exports = router