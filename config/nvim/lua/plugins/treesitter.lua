return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                -- enable syntax highlighting
                highlight = {
                    enable = true,
                },
                -- enable indentation
                indent = { enable = true },
                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },
                -- ensure these language parsers are installed
                ensure_installed = {
                    "json",
                    "javascript",
                    "typescript",
                    "php",
                    "yaml",
		    "sql",
                    "html",
		    "scss",
		    "python",
                    "css",
                    "markdown",
                    "markdown_inline",
                    "bash",
		    "java",
		    "javadoc",
		    "jsdoc",
		    "phpdoc",
		    "regex",
		    "xml",
		    "robots",
		    "kotlin",
		    -- "latex",
		    "ini",
		    "glsl",
		    "gdshader",
		    "asm",
                    "lua",
                    "vim",
                    "vimdoc",
                    "c",
		    "cpp",
		    "c_sharp",
		    "cmake",
                    "dockerfile",
                    "gitignore",
                },
                -- auto install above language parsers
                auto_install = false,
            })
        end
    }
}
