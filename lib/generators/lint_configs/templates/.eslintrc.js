const PRODUCTION_ENVS = ['production', 'staging'];

module.exports = {
  env: {
    browser: true,
    es6: true,
    jasmine: true,
    jest: true,
    node: true
  },

  extends: [
    'plugin:vue/recommended',
    'airbnb-base'
  ],

  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly'
  },

  parserOptions: {
    ecmaVersion: 2018,
    sourceType: 'module',
    parser: 'babel-eslint'
  },

  plugins: [
    'vue'
  ],

  rules: {
    'vue/max-attributes-per-line': 'off',
    'max-len': [
      1,
      {
        code: 200
      }
    ],
    'no-console': PRODUCTION_ENVS.includes(process.env.NODE_ENV) ? 'error' : 'off',
    'no-debugger': PRODUCTION_ENVS.includes(process.env.NODE_ENV) ? 'error' : 'off'
  },

  root: true,

  'extends': [
    'plugin:vue/recommended',
    'airbnb-base',
    'plugin:vue/essential',
    '@vue/airbnb'
  ]
};
