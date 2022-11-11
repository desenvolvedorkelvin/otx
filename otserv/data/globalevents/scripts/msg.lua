function onThink(interval, lastExecution)
MENSAGEM = {
"Ours gms do not answer private message and does not ask for your account data.",
"Our ant-bot system with automatic detection works in two steps in login and scans",
"To make your donation just log www.shivera-old.com , Good Game.",
"To know which monsters are boosted, check our website.",
"Any suggestion, complaint or bug report can be made through our discord https://discord.gg/zfz3j98Q.",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],19)
return TRUE
end