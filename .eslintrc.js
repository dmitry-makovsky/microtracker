module.exports = {
  root: true,
  plugins: ['jest', 'babel'],
  env: {
    browser: true,
    node: true,
    jest: true,
  },
  parser: 'babel-eslint',
  extends: [
    'airbnb-base',
    'plugin:jest/recommended',
  ],
  rules: {
    'no-console': 0,
    'import/extensions': 0,
  },
  settings: {
    'import/resolver': {
    },
  },
};
