const path = require('path');

module.exports = {
  root: true,
  plugins: ['jest', 'babel', 'import-monorepo'],
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
    'import/no-extraneous-dependencies': ['error', { devDependencies: true, packageDir: path.join(__dirname, './') }],
  },
  settings: {
    'import/resolver': {
    },
  },
};
