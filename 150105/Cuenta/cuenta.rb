def check_format(account)
  otrotemp = account.gsub(/[^0-9]/,'')
  unamas = otrotemp.to_i
  if (otrotemp.length == 10) && (unamas.integer?)
    true
  else
    "El formato no es valido"
  end
end

def account_exist?(text,account)
  if text.include? account
    return account
  else
    nil
  end
end

def array_accounts(text)
  otrotemp = text.gsub(/[^0-9]/,'')
  if otrotemp.length > 10
    otra = otrotemp.scan(/........../)
    otra.each do |account|
      account.insert(4, "-")
      account.insert(8, "-")
    end
  else
    otra = []
  end
  otra
end

def confidential(text)
  accounts = array_accounts(text)
  otro = ""
  array = []
  accounts.each do |digits|
    original = digits
    p "ORIGINAL : #{original}"
    p "TEXTO #{text}"
    digits[0..7] = "XXXX-XXX"
    puts "DIGITS: #{digits}" 
    array << text.gsub(original,digits)
    # p "OTRO #{otro}"
  end
  p array
end

def confidential2(text)
  text.gsub(/\d{4}-\d{3}/, "XXXX-XXX")
end 

def change_format(string)
  otrotemp = string.gsub(/[^0-9]/,'')
  unamas = otrotemp.to_i
  if (otrotemp.length == 10) && (unamas.integer?)
    otrotemp.insert(4, "-")
    otrotemp.insert(8, "-")
  else
    "El formato no es valido"
  end
  otrotemp
end


#PRUEBAS
puts "Pruebas check_format:"
p check_format("1234-123-123") == true
p check_format("124-123-123") == "El formato no es valido"
p check_format("1234-1234-123") == "El formato no es valido"
p check_format("1234.123.123") == true

puts "Pruebas account_exist?:"
p account_exist?("numero de cuenta de Ignacio Betancourt: 1234-123-123","1234-123-123") == "1234-123-123"
p account_exist?("numero de cuenta de Ignacio Betancourt: 1234-123-123","1234-123-132") == nil
p account_exist?("La cuenta de credito es 1234-321-321","1234-321-321") == "1234-321-321"
p account_exist?("La cuenta de credito es 1234-321-321","1234-322-321") == nil

puts "Pruebas array_accounts"
p array_accounts("Cuentas: 1234-123-123, 9876-654-321 y 7890-456-123") == ["1234-123-123", "9876-654-321", "7890-456-123"]
p array_accounts("Cuentas: ninguna encontrada") == []
p array_accounts("Las cuentas del Sr. Balaba Bond son: 1234-123-123, 9876-654-321") == ["1234-123-123", "9876-654-321"]
p array_accounts("Cuenta básica: 125-253") == []

puts "Pruebas confidential"
#p confidential("Cuentas: 1234-123-123, 9876-654-456 y 7890-456-789")
p confidential2("Cuentas: 1234-123-123, 9876-654-456 y 7890-456-789") == "Cuentas: XXXX-XXX-123, XXXX-XXX-456 y XXXX-XXX-789"
p confidential2("Las cuentas del Sr. Balaba Bond son: 1234-123-123, 9876-654-321") == "Las cuentas del Sr. Balaba Bond son: XXXX-XXX-123, XXXX-XXX-321"

puts "Pruebas change_format"
p change_format("1234,123,123") == "1234-123-123"
p change_format("1234.123.123") == "1234-123-123"
p change_format("cuenta:1234123123") == "1234-123-123"
p change_format("1234 123 123") == "1234-123-123"