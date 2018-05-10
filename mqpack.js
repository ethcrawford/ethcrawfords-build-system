const fs = require("fs");
const mqpacker = require("css-mqpacker");
const result = mqpacker.pack(fs.readFileSync("public/app.css", "utf8"), {
  from: "app.css",
  sort: true,
  to: "app.css"
});
fs.writeFileSync("public/app.css", result.css);
