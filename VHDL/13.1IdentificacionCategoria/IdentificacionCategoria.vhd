library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity IdentificacionCategoria is
    port (
        tag_id: in std_logic_vector(4 downto 0); -- Identificación del vehículo
        categoria: out integer range 1 to 4 -- Categoría del vehículo
    );
end entity IdentificacionCategoria;

architecture rtl of IdentificacionCategoria is
    -- Declaración de tipos
    type vehiculo_categoria is (CATI, CATII, CATIII);

begin
    -- Módulo de Identificación de Categoría del Vehículo
    process(tag_id)
    begin
        -- Verificar la categoría del vehículo
        case tag_id(4 downto 3) is
            when "00" =>
                categoria <= 1; -- Categoría CATI
            when "01" =>
                categoria <= 2; -- Categoría CATII
            when "10" =>
                categoria <= 4; -- Categoría CATIII
            when others =>
                categoria <= 1; -- Categoría por defecto (CATI)
        end case;
    end process;

end rtl;
