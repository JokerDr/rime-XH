local function translator(input, seg)
    local text=""
    if (input == "date") then
        text=os.date("%Y/%m/%d")
    elseif (input == "time") then
        text=os.date("%Y/%m/%d %H:%M:%S")
    else
        return
    end

    local cand = Candidate(text, seg.start, seg._end, text, "")
    cand.quality = 2
    yield(cand)
end

return translator
