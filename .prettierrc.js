import pkgJson from 'prettier-plugin-packagejson';

/** @type {import("prettier").Options} */
export default {
  singleQuote: true,
  trailingComma: 'all',
  plugins: [pkgJson],
};
