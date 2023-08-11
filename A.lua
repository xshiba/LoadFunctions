local FunctionList = {
        {
            f = pcall,
            r = "missing argument #1",
            c = true,
            s = false
        },
        {
            f = xpcall,
            r = "missing argument #2 to 'xpcall' (function expected)",
            c = true,
            s = false
        },
        {
            f = pcall,
            r = "attempt to call a boolean value",
            c = true,
            s = false,
            a = {
                function()
                end
            }
        },
        {
            f = xpcall,
            r = "attempt to call a boolean value",
            c = true,
            s = false,
            a = {
                function()
                end,
                function()
                end
            }
        },
        {
            f = request,
            r = 'Bad argument #1 to "request", table expected, got no value!',
            c = true,
            s = false
        },
        {
            f = getconstants,
            r = 'Bad argument #1 to "debug.getconstants", (function or number) expected, got no value!',
            c = true,
            s = false
        },
        {
            f = getconstants,
            r = 'attempt to call a table value',
            c = true,
            s = false,
            a = {
                function()
                end
            }
        },
        {
            f = getconstants,
            r = 'attempt to call a table value',
            c = true,
            s = false,
            a = {
                1
            }
        },
        {
            f = Random,
            r = 'attempt to call a table value',
            c = true,
            s = false,
        },
        {
            f = Random.new,
            r = 'attempt to call a Random value',
            c = true,
            s = false,
            a = {
                1
            }
        },
        {
            f = string.byte,
            r = "missing argument #1 to 'byte' (string expected)",
            c = true,
            s = false
        },
        {
            f = string.sub,
            r = "missing argument #1 to 'sub' (string expected)",
            c = true,
            s = false
        },
        {
            f = string.gsub,
            r = "missing argument #1 to 'gsub' (string expected)",
            c = true,
            s = false
        },
        {
            f = function()
            end,
            r = nil,
            c = false,
            s = true
        },
        {
            f = function()
                return RS
            end,
            r = RS,
            c = false,
            s = true
        },
        {
            f = function()
                return false
            end,
            r = false,
            c = false,
            s = true
        },
        {
            f = function()
                return true
            end,
            r = true,
            c = false,
            s = true
        }
    } 
for i, v in pairs(FunctionList) do
    local E,R = pcall(v.f)
    print(tostring(v.f)..": "..tostring(R))
end
