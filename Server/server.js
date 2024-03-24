const httpServer = require("http").createServer();
const io = require("socket.io")(httpServer);



io.on('connection', (client) => {
    console.log('Client connected...');

    client.on('gps_event', (data) => {
        console.log(data);
    });

    client.emit("hello");
});


io.on('disconnect', function () {
    console.log('Client disconnected!');
});



httpServer.listen(3000);