dim n1, n2, n3, media, situacao 'Declarar variáveis locais alfanuméricas
dim resp, audio

call carregar_audio

sub carregar_audio()
    set audio=createobject("SAPI.SPVOICE")
    audio.volume=100
    audio.rate=5 'Velocidade da fala
    call calcular_notas
end sub

sub calcular_notas()
    'cint = converte string pra n�mero inteiro
    'cdbl = converte string para n�mero decimal
    'clng = converte string para n�mero inteiro longo
    'ccur = converte string para numero monetario

    n1=cdbl(inputbox("Digite a nota 1", "ATEN��O"))
    n2=cdbl(inputbox("Digite a nota 2", "ATEN��O"))
    n3=cdbl(inputbox("Digite a nota 3", "ATEN��O"))
    media=round((n1+n2+n3)/3,2)
    if media < 4 then
        situacao="Reprovado"
    elseif media>=7 then
        situacao="Aprovado"
    else
        situacao="Exame"
    end if
    'Sa�da de dados por voz
    audio.speak("Rendimento do Aluno:" + vbnewline &_
                "M�dia do Aluno "& media &"" + vbnewline &_
                "Situa��o Final "& situacao &"")
    
    'Sa�da de dados por msg
    msgbox("===================================" + vbnewline &_
           "        RENDIMENTO DO ALUNO        " + vbnewline &_
           "===================================" + vbnewline &_
           "M�dia do Aluno: "& media &""         + vbnewline &_
           "Situa��o Final: "& situacao &""),vbinformation + vbokonly,"AVISO"
    resp=msgbox("Deseja realizar novo c�lculo?",vbquestion + vbyesno,"ATEN��O")
    if resp=vbyes then
        call calcular_notas
    else
        wscript.quit
    end if
end sub