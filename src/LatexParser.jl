module LatexParser
using Markdown
export tex_left, tex_center

function fix_chars(equation::String)
    return replace(equation, r"(\$|(\r\n|\n|\r))" => s"")
end

function bold_equation(equation::String)
    equation = "\\boldsymbol{" * equation
    equation =  equation * "}" 
    return equation
end

function tex_left(equation::String, bold::Bool=false)
    equation = fix_chars(equation)
    if bold
        equation = bold_equation(equation)
    end
    equation = "``" * equation
    equation =  equation * "``" 
    return Markdown.parse(equation)
end

function tex_center(equation::String, bold::Bool=false)
    equation = fix_chars(equation)
    if bold
        equation = bold_equation(equation)
    end
    equation = "\$" * equation
    equation =  equation * "\$" 
    return Markdown.parse(equation)
end
end # module
