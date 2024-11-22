/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/main/webapp/*.jsp", // Mencakup semua file JSP di root folder
    "./src/main/webapp/scripts/**/*.js", // Jika ada file JavaScript
    "./src/main/webapp/styles/**/*.css", // Jika ada file CSS tambahan
  ],
  theme: {
    extend: {},
  },
  plugins: [],
};

