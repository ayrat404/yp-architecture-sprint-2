# Инициализируем бд

# Определяем команды MongoDB
$mongoCommands = @"
use somedb
for(var i = 0; i < 1000; i++) db.helloDoc.insertOne({age:i, name:"ly"+i})
"@

# Выполняем команды через конвейер
$mongoCommands | docker compose exec -T mongodb1 mongosh