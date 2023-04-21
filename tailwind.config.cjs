const typography = require("@tailwindcss/typography");
const catppuccin = require("@catppuccin/tailwindcss");

const config = {
  content: ["./src/**/*.{html,js,svelte,ts}"],

  theme: {
    extend: {}
  },

  plugins: [typography, catppuccin]
};

module.exports = config;