---@class Keybind
Keybind = {}

function Keybind.toBind(input)
    if type(input) == "table" then
        return table.concat(input, '+')
    end
    return input
end

function Keybind:concat()
    return Keybind.toBind(self)
end

---@class Bind
Bind = {}

---@param bind string|Keybind
---@param act function|HL.Dispatcher|string
---@param opt? HL.BindOptions
function Bind.modkey(bind, act, opt)
    local keyBind = "SUPER+" .. Keybind.toBind(bind)

    if type(act) == "string" then
        hl.bind(keyBind, hl.dsp.exec_cmd(act), opt)
    else
        hl.bind(keyBind, act, opt)
    end
end

---@param bind string|Keybind
---@param act function|HL.Dispatcher|string
---@param opt? HL.BindOptions
function Bind.key(bind, act, opt)
    if type(act) == "string" then
        hl.bind(Keybind.toBind(bind), hl.dsp.exec_cmd(act), opt)
    else
        hl.bind(Keybind.toBind(bind), act, opt)
    end
end
