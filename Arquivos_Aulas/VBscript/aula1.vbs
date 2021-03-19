dim n1, n2, n3, media, situacao 'Declarar variÃ¡veis locais alfanumÃ©ricas
dim resp, audio

call carregar_audio

sub carregar_audio()
    set audio=createobject("SAPI.SPVOICE")
    audio.volume=100
    audio.rate=5 'Velocidade da fala
    call calcular_notas
end sub

sub calcular_notas()
    'cint = converte string pra número inteiro
    'cdbl = converte string para número decimal
    'clng = converte string para número inteiro longo
    'ccur = converte string para numero monetario

    n1=cdbl(inputbox("Digite a nota 1", "ATENÇÃO"))
    n2=cdbl(inputbox("Digite a nota 2", "ATENÇÃO"))
    n3=cdbl(inputbox("Digite a nota 3", "ATENÇÃO"))
    media=round((n1+n2+n3)/3,2)
    if media < 4 then
        situacao="Reprovado"
    elseif media>=7 then
        situacao="Aprovado"
    else
        situacao="Exame"
    end if
    'Saída de dados por voz
    audio.speak("Rendimento do Aluno:" + vbnewline &_
                "Média do Aluno "& media &"" + vbnewline &_
                "Situação Final "& situacao &"")
    
    'Saída de dados por msg
    msgbox("===================================" + vbnewline &_
           "        RENDIMENTO DO ALUNO        " + vbnewline &_
           "===================================" + vbnewline &_
           "Média do Aluno: "& media &""         + vbnewline &_
           "Situação Final: "& situacao &""),vbinformation + vbokonly,"AVISO"
    resp=msgbox("Deseja realizar novo cálculo?",vbquestion + vbyesno,"ATENÇÃO")
    if resp=vbyes then
        call calcular_notas
    else
        wscript.quit
    end if
end sub