

--script by kayo (kayu#5666)
-- :)




----- configuração 

local tempo_delay = 5 -- segundos
local rand = math.random(7)
local status = "desligado"


----- mensagens que vai enviar

msg = {
    "hii, pls donate",
    "i want to create a game on roblox i need help to be able to hire scripters 🤷‍♀️",
    "can someone give me robux i'm creating a game on roblox",
    "can a kind hearted person come to me and read why i need a donation?",
    "come to me pls ❤",
    "I am creating a game on roblox, can you help me with donations, it would motivate me a lot",
    "i need donations for my roblox game"
}

----- função para randomizar as mensagens

randomizar_msg = function(x)
    local r = math.random(1,7)
    return x[r]
end


----- ligar com a letra K e desligar pela tecla L
print("Script executado com sucesso, ultilize a letra K para Ligar e L para desligar")
game:GetService("UserInputService").InputBegan:connect(function(input, Processed)
    if not Processed then
        if input.KeyCode == Enum.KeyCode.K then 
            status = "ligado"
            print("ligado")
        end
        if input.KeyCode == Enum.KeyCode.L then 
            status = "desligado"
            print("desligado")
        end
    end
end)


----- principal (quando iniciar o programa)

while( true )
do
    wait(3)
    if status == "ligado" then 

        wait(tempo_delay)  -- delay
        local mensagem = randomizar_msg(msg)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(mensagem, "All") -- enviando a mensagem no chat

    end
end


----- função de delay

function wait(segundos)
    local start = os.time()
    repeat until os.time() > start + segundos
end

