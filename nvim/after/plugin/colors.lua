
function ColorMyPencils(color)
    color = color or "rose-pine"
    if color == 1 then
       color = "rose-pine" 
    elseif color == 2 then
       color = "nightfox" 
    end
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
