config = require("cson-config").load()

app = require("express.io")()
app.http().io()

app.io.route "client", (req) ->
	req.io.emit "client", qwer:"asdf"

app.get "/", (req, res) ->
    res.sendfile __dirname + "/client.html"

app.listen config.port
