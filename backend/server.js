const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());

// Rutas
app.use("/api", require("./routes/auth.routes"));
app.use("/api", require("./routes/chat.routes"));
app.use("/api", require("./routes/tramite.routes"));

app.listen(3000, () => console.log("Servidor ejecutándose en http://localhost:3000"));
