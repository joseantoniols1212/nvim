local ls = require("luasnip")
-- Atajos
local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamic = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.snippets = {
	all = {
		-- trigger is fn.
		snip("fn", {
			-- Simple static text.
			text("//Parameters: ")
			-- function, first parameter is the function, second the Placeholders
			-- whose text it gets as input.
		})
  }
}

-- in a lua file: search lua-, then c-, then all-snippets.
ls.filetype_extend("lua", { "c" })
-- in a cpp file: search c-snippets, then all-snippets only (no cpp-snippets!!).
ls.filetype_set("cpp", { "c" })

--[[
-- Beside defining your own snippets you can also load snippets from "vscode-like" packages
-- that expose snippets in json files, for example <https://github.com/rafamadriz/friendly-snippets>.
-- Mind that this will extend  `ls.snippets` so you need to do it after your own snippets or you
-- will need to extend the table yourself instead of setting a new one.
]]

require("luasnip.loaders.from_vscode").load({ include = { "python" } }) -- Load only python snippets
-- The directories will have to be structured like eg. <https://github.com/rafamadriz/friendly-snippets> (include
-- a similar `package.json`)
require("luasnip.loaders.from_vscode").load({ paths = { "./my-snippets" } }) -- Load snippets from my-snippets folder

-- You can also use lazy loading so you only get in memory snippets of languages you use
require("luasnip.loaders.from_vscode").lazy_load() -- You can pass { paths = "./my-snippets/"} as well

-- You can also use snippets in snipmate format, for example <https://github.com/honza/vim-snippets>.
-- The usage is similar to vscode.

-- One peculiarity of honza/vim-snippets is that the file with the global snippets is _.snippets, so global snippets
-- are stored in `ls.snippets._`.
-- We need to tell luasnip that "_" contains global snippets:
ls.filetype_extend("all", { "_" })

require("luasnip.loaders.from_snipmate").load({ include = { "c" } }) -- Load only python snippets

require("luasnip.loaders.from_snipmate").load({ path = { "./my-snippets" } }) -- Load snippets from my-snippets folder
-- If path is not specified, luasnip will look for the `snippets` directory in rtp (for custom-snippet probably
-- `~/.config/nvim/snippets`).

require("luasnip.loaders.from_snipmate").lazy_load() -- Lazy loading
