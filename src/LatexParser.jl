module LatexParser
using Markdown
export tex_left, tex_center
function tex_left(equation)
    equation = "``" * equation
    equation =  equation * "``" 
    return Markdown.parse(equation)
end
function tex_center(equation)
    equation = "\$" * equation
    equation =  equation * "\$" 
    return Markdown.parse(equation)
end
end # module
