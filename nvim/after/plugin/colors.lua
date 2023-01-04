
function ColorMyPencils(color)
    color = color or "rose-pine"
    if color == 1 then
       color = "rose-pine" 
    elseif color == 2 then
       color = "nightfox" 
    elseif color == 3 then
        color = "carbonfox"
    elseif color == 4 then
        color = "terafox"
    end
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
