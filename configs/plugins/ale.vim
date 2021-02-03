let g:ale_linters = {
\   'c': [], 'cpp': [], 'rust': [], 'go': [], 'python': [], 'sh': [],
\   'html': [], 'css': [], 'javascript': ['eslint'], 'typescript': ['eslint'], 'typescriptreact': ['eslint'],
\   'reason': [], 'json': [], 'vue': [],
\   'tex': [], 'latex': [], 'bib': [], 'bibtex': []
\ }

let g:ale_fixers = {
\   'c': [], 'cpp': [], 'rust': [], 'go': [], 'python': [], 'sh': [],
\   'html': [], 'css': [], 'javascript': [], 'typescript': [], 'typescriptreact': [],
\   'reason': [], 'json': [], 'vue': [],
\   'tex': [], 'latex': [], 'bib': [], 'bibtex': [],
\   'tf': []
\ }

let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:airline#extensions#ale#enabled = 1
let g:ale_disable_lsp = 1
