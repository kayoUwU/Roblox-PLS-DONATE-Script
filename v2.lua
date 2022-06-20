local gui = Instance.new("ScreenGui")
local gui_frame = Instance.new("Frame")
local botao = Instance.new("TextButton")
local creditos = Instance.new("TextLabel")
local criador = Instance.new("TextLabel")
local titulo = Instance.new("TextLabel")

gui.Name = "gui"
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

gui_frame.Name = "gui_frame"
gui_frame.Parent = gui
gui_frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
gui_frame.Position = UDim2.new(0.0783227831, 0, 0.0260223057, 0)
gui_frame.Size = UDim2.new(0, 197, 0, 116)
gui_frame.Active = true
gui_frame.Draggable = true

botao.Name = "botao"
botao.Parent = gui_frame
botao.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
botao.BorderColor3 = Color3.fromRGB(40, 40, 40)
botao.Position = UDim2.new(0.0659898445, 0, 0.431133926, 0)
botao.Size = UDim2.new(0, 171, 0, 33)
botao.Selected = true
botao.Font = Enum.Font.JosefinSans
botao.Text = "Desligado"
botao.TextColor3 = Color3.fromRGB(255, 105, 97)
botao.TextSize = 17.000
botao.TextWrapped = true

creditos.Name = "creditos"
creditos.Parent = gui_frame
creditos.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
creditos.BorderColor3 = Color3.fromRGB(50, 50, 50)
creditos.Position = UDim2.new(-1.11758709e-08, 0, 0.789655209, 0)
creditos.Size = UDim2.new(0, 68, 0, 24)
creditos.Font = Enum.Font.SourceSans
creditos.Text = "criado por: "
creditos.TextColor3 = Color3.fromRGB(999, 999, 999)
creditos.TextSize = 14.000

criador.Name = "criador"
criador.Parent = gui_frame
criador.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
criador.BorderColor3 = Color3.fromRGB(50, 50, 50)
criador.Position = UDim2.new(0.314720869, 0, 0.789655209, 0)
criador.Size = UDim2.new(0, 56, 0, 24)
criador.Font = Enum.Font.SourceSans
criador.Text = "kayo#7760"
criador.TextColor3 = Color3.fromRGB(70, 141, 211)
criador.TextSize = 14.000

titulo.Name = "titulo"
titulo.Parent = gui_frame
titulo.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
titulo.BorderColor3 = Color3.fromRGB(50, 50, 50)
titulo.Position = UDim2.new(0, 0, -0.00344822323, 0)
titulo.Size = UDim2.new(0, 197, 0, 32)
titulo.Font = Enum.Font.PatrickHand
titulo.Text = "PLS DONATE | AUTO-MESSAGE"
titulo.TextColor3 = Color3.fromRGB(999, 999, 999)
titulo.TextScaled = true
titulo.TextSize = 14.000
titulo.TextWrapped = true

local script = Instance.new('LocalScript', gui_frame)
local botao = script.Parent.botao

-- Configuração ----


local rand = math.random(7)
local status = false


-- Daqui para baixo não mexa em nada poís isso pode quebrar o codígo -----


randomizar_msg = function(x)
    local r = math.random(1,7)
    return x[r]
end


botao.MouseButton1Click:Connect(function()
    
    if botao.Text == "Ligado" then
        botao.TextColor3 = Color3.new(1, 0.470588, 0.470588) 
        botao.Text = "Desligado"
        status = false
    else
        botao.TextColor3 = Color3.new(0.521569, 1, 0.2) 
        botao.Text = "Ligado";
        status = true
    end
    
end)

while( true )
do
    wait(1)
    if status == true then 
        wait(tempo_delay) 
        local mensagem = randomizar_msg(msg)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(mensagem, "All")
        print("mensagem enviada com sucesso: "..mensagem)

    end
end
