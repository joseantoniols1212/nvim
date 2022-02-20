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
  },
  tex = {
    -- Matemáticas

    -- General
    snip("mm", { -- Modo matematico en texto
      text("\\("), insert(1), text("\\)"), insert(0)
    }),
    snip("md", { -- Modo matematico display
      text("\\["), insert(1), text("\\]"), insert(0)
    }),
    snip("R", { -- Rn
      text("\\mathbb{R}^{"), insert(1, "n"), text("}"), insert(0)
    }),
    snip("fun", { -- Funcion matematica
      text("\\("), insert(1), text("\\to "), insert(2), text(", "), insert(3),
      text(" \\)"), insert(0)
    }),
    snip("cont", { -- Conjunto de las funciones continuas y de derivada n-esima continua
      text("\\mathcal{C}^{"), insert(1), text("}("), insert(2), text(")"), insert(0)
    }),
    snip("frac", { -- Fracciones
      text("\\frac{"), insert(1), text("}{"), insert(2), text("}"), insert(0)
    }),
    snip("eq", { -- Ecuaciones
      text("\\begin{equation}", ""), insert(1), text("\\end{equation}"), insert(0)
    }),

    -- Letras griegas
    snip("a", {text("\\alpha")}),
    snip("b",{text("\\beta")}),
    snip("l", {text("\\lambda")})
  }
}
