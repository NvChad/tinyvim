local null_ls = require("null-ls")


-- these are just the basics , check their docs
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
    },
})
