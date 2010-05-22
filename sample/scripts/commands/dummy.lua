Command("dummy","[destroy] <name>","Creates a dummy.",
  function(command,player,message)
    if message == "" then
      Message("&eSyntax: "..command.syntax):Send(player)
	  return
    end
    local body = Body(message,player.Level)
    body.Position:Set(player.Position)
    body.Visible = true
    table.insert(levelDummies,body)
  end
)
dofile "scripts/commands/dummy_destroy.lua"
