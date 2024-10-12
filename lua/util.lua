function nmap(shortcut, command)
    map('n', shortcut, command)
end

function imap(shortcut, command)
    map('i', shortcut, command)
end

function map(mode, shortcut, command)
    vim.keymap.set(mode, shortcut, command, { noremap = true})
end



