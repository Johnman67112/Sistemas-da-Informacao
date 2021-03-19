sub jogo()
    do while n=1
    randomize(second(time))
    np=int(rnd4)

    if words(np)="false" then
        np=int(rnd4)
    else
        audio.speak("A PALAVRA É "&words(np)&" ")
        ans=(inputbox("Digite a palavra ouvida!   "     + vbnewline &
                      "Nome do jogador: "&jogador&"   "     + vbnewline & 
                      "Palavra: "&words(np)&"         ", "SOLETRANDO"))
        if ans=words(np) then
            words(np)="false"
            acertos++
            msgbox("Acertou "&acertos&" de 12!")
        end if

    end if

    loop
end sub
dim jogador, words(20), ans, n, np, audio, pontos
n=1
acertos=0
call carregar_audio
sub carregaraudio() 

set audio=createobject("SAPI.SPVOICE") 
audio.volume=100 
audio.rate=2 
end sub 

call nome


sub nome()
    jogador=cstr(inputbox("Escreva seu nome!","SOLETRANDO"))
    call palavras
end sub

sub palavras()
'nível 1
words(0)="BANANA"
words(1)="CANETA"
words(2)="ROUPA"
words(3)="ZERO"
call jogo
end sub

sub jogo()

    do while n=1
    randomize(second(time))
    np=int(rnd4)

    if words(np)="false" then
        np=int(rnd4)
    else
        audio.speak("A PALAVRA É "&words(np)&" ")
        ans=(inputbox("Digite a palavra ouvida!   "     + vbnewline &
                      "Nome do jogador: "&jogador&"   "     + vbnewline &_ 
                      "Palavra: "&words(np)&"         ", "SOLETRANDO"))
        if ans=words(np) then
            words(np)="false"
            acertos=acertos+1
            msgbox("Acertou "&acertos&" de 12!")
                if acertos=3 then
                call jogo
        end if
    end if
    loop
end sub