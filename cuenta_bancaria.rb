class CuentaBancaria

    attr_accessor :nombre_usuario
    attr_reader :vip, :numero_de_cuenta

    def initialize(nombre_usuario, numero_de_cuenta, vip = 0)
        @nombre_usuario = nombre_usuario

        if numero_de_cuenta.digits.count==8
            @numero_de_cuenta = numero_de_cuenta
            if vip == 0 || vip == 1
                @vip = vip
            else
                raise RangeError.new('Vip debe ser 1 ó 0')
            end
        else
            raise RangeError.new('Deben ser 8 digitos')
        end
    end

    def numero_de_cuenta
        if self.vip==0
            return "0-#{@numero_de_cuenta}"
        else
            return "1-#{@numero_de_cuenta}"
        end
    end
end

