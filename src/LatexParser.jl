module LatexParser
using Markdown

function left(equation)
    equation = "``" * equation
    equation =  equation * "``" 
    return Markdown.parse(equation)
end
function center(equation)
    equation = "\$" * equation
    equation =  equation * "\$" 
    return Markdown.parse(equation)
end
end # module
