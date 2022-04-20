const express = require('express');
const path = require('path');
const app = express();
app.use(express.static(path.join(__dirname, 'public')));

port = process.env.PORT || 8080

app.listen(port, () => {
    console.log(`App listening on port ${port}`)
});
