#Requires AutoHotkey v2.0

; Presiona F6 para activar o desactivar el autoclicker
F6:: {
    static isRunning := false
    isRunning := !isRunning
    
    if isRunning {
        ; Intervalo en milisegundos (1 ms equivale aproximadamente al retraso del script original)
        SetTimer(DoClick, 1)
    } else {
        SetTimer(DoClick, 0)
    }
}

DoClick() {
    Click
}
