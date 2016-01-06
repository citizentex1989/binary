def destructive!(arg)
  arg.gsub!("e","a")
  puts arg
  arg
end

def nodestructive(arg)
  otro = arg.gsub("e","a")
  puts arg
  otro
end

p destructive!("Este es un texto de ejemplo de la letra e cambiada por a") == "Esta as un taxto da ajamplo da la latra a cambiada por a"
p nodestructive("Este es un texto de ejemplo de la letra e cambiada por a") == "Esta as un taxto da ajamplo da la latra a cambiada por a"