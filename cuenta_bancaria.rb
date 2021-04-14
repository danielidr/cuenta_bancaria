class CuentaBancaria

    attr_accessor :nombre_usuario

    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
        @nombre_usuario = nombre_usuario
        @vip = vip
        digitos = numero_de_cuenta.digits
        if digitos.count==8
            @numero_de_cuenta = numero_de_cuenta
        else
            raise RangeError.new('Deben ser 8 digitos')
        end
    end

    def numero_de_cuenta()
        if @vip==0
            @numero_de_cuenta = "0-#{@numero_de_cuenta}"
        else
            @numero_de_cuenta = "1-#{@numero_de_cuenta}"
        end
    end
end