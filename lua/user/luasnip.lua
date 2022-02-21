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
    snip("frac", { -- Fraccion
      text("\\frac{"), insert(1), text("}{"), insert(2), text("}"), insert(0)
    }),
    snip("eq", { -- Ecuacion
      text("\\begin{equation}", ""),
      insert(1), text("","\\end{equation}"), insert(0)
    }),
    snip("eq*", { -- Ecuacion sin numero
      text("\\begin{equation*}", ""),
      insert(1), text("", "\\end{equation*}"), insert(0)
    }),
    snip("align", { -- Alinear
      text("\\begin{align}", ""),
      insert(1), text("", "\\end{align}"), insert(0)
    }),
    snip("align*", { -- Alinear sin numero
      text("\\begin{align*}", ""),
      insert(1), text("", "\\end{align*}"), insert(0)
    }),
    snip("lim", { -- Limite
      text("\\lim_{"), insert(1, "n \\to \\infty"), text("}"), insert(0)
    }),
    snip("int", { -- Integral
      text("\\int_{"), insert(1), text("}^{"), insert(2), text("}"),insert(0)
    }),
    snip("sum", { -- Sumatorio
      text("\\sum_{"), insert(1, "n=0"), text("}^{"), insert(2, "\\infty"), text("}"), insert(0)
    }),
    snip("sqrt", { -- Raiz cuadrada
      text("\\sqrt{"), insert(1), text("}"), insert(0)
    }),

    -- Letras griegas
    snip("\\a", {text("\\alpha")}),
    snip("\\b",{text("\\beta")}),
    snip("\\g",{text("\\gamma")}),
    snip("\\l", {text("\\lambda")}),
    snip("\\m", {text("\\mu")}),
    snip("\\n", {text("\\nu")}),
    snip("\\p", {text("\\pi")}),
    snip("\\r", {text("\\rho")}),
    snip("\\s", {text("\\sigma")}),
    snip("\\f", {text("\\phi")}),
    snip("\\x", {text("\\chi")}),
    snip("\\c", {text("\\psi")}),
    snip("\\v", {text("\\omega")}),
    snip("\\dg", {text("\\digamma")}),
    snip("\\e", {text("\\varepsilon")}),

    -- Tipos de texto
    snip("bf", { -- Negrita
      text("\\textbf{"), insert(1), text("}"), insert(0)
    }),
    snip("mbf", { -- Negrita en matematicas
      text("\\mathbf{"), insert(1), text("}"), insert(0)
    }),
    snip("it", { -- Italicas
      text("\\textit{"), insert(1), text("}"), insert(0)
    })
  }
}
