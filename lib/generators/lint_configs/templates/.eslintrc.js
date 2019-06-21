module.exports = {
  'env': {
      'browser': true,
      'es6': true,
      'jasmine': true,
      'jest': true
  },
  'extends': [
    'airbnb-base',
    'plugin:vue/recommended' // Add ability to parse Vue files
  ],
  'globals': {
      'Atomics': 'readonly',
      'SharedArrayBuffer': 'readonly'
  },
  'parserOptions': {
      'ecmaVersion': 2018,
      'sourceType': 'module'
  },
  'plugins': [
      'vue' // if you want to add vue support
  ],
  'rules': {
    'vue/max-attributes-per-line': 'off'
  }
};
