import js from '@eslint/js';
import globals from 'globals';
import pluginReact from 'eslint-plugin-react';
import markdown from '@eslint/markdown';
import css from '@eslint/css';
import { defineConfig } from 'eslint/config';


export default defineConfig([
    {
        files: ['**/*.js', '**/*.jsx', '**/*.css'],
        rules: {
            'indent': ['warn', 4],
            'quotes': ['warn', 'single'],
            'jsx-quotes': ['warn', 'prefer-single'],
            'no-unused-vars': ['warn', { varsIgnorePattern: '^[A-Z_]' }],
            'no-trailing-spaces': ['error'],
            'no-irregular-whitespace': ['error'],
            'object-curly-spacing': ['warn', 'always'],
            'no-multi-spaces': 'error',
            'key-spacing': [
                'warn',
                { beforeColon: false, afterColon: true}
            ],
            'no-multiple-empty-lines': ['warn', { max: 1 }],
            'space-before-function-paren': ['warn', 'never'],
        }
    },
    { files: ['**/*.{js,mjs,cjs,jsx}'], plugins: { js }, extends: ['js/recommended'] },
    { files: ['**/*.{js,mjs,cjs,jsx}'], languageOptions: { globals: globals.browser } },
    pluginReact.configs.flat.recommended,
    { files: ['**/*.md'], plugins: { markdown }, language: 'markdown/gfm', extends: ['markdown/recommended'] },
    { files: ['**/*.css'], plugins: { css }, language: 'css/css', extends: ['css/recommended'] },
]);
