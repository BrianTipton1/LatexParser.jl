module LatexParser
using Markdown
export tex_left, tex_center
function tex_left(equation::String, bold::Bool=false)
    if bold
        equation = "``\\boldsymbol{" * equation
        equation =  equation * "}``" 
        return Markdown.parse(equation)
    end
    equation = "``" * equation
    equation =  equation * "``" 
    return Markdown.parse(equation)
end
function tex_center(equation::String, bold::Bool=false)
    if bold
        equation = "\$\\boldsymbol{" * equation
        equation =  equation * "}\$" 
        return Markdown.parse(equation)
    end
    equation = "\$" * equation
    equation =  equation * "\$" 
    return Markdown.parse(equation)
end
end # module
