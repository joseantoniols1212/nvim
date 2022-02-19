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
