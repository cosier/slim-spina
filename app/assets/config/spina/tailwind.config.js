module.exports = {
  theme: {
    fontFamily: {
        body: ['Roboto', 'sans-serif'],
        mono: ['Roboto', 'ui-monospace', 'SFMono-Regular', 'Menlo', 'Monaco', 'Consolas', "Liberation Mono", "Courier New", 'monospace']
    },
    extend: {
      colors: {
        spina: {
            light: '#f7b57a',
            DEFAULT: '#e58025',
            dark: '#b95e0b'
        }
      }
    }
  },
  variants: {
    boxShadow: ['active'],
    extend: {
      backgroundColor: ['even', 'checked']
    }
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('@tailwindcss/forms')
  ]
}
