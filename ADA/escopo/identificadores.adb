 // teste apenas
with Ada.Text_IO; use Ada.Text_IO;

procedure Identificadores is
   -- Secao declarativa: definicoes devem vir antes do 'begin'
   Total_Soma : Integer := 10;
   -- total_soma : Integer := 20; -- ERRO DE COMPILACAO: Ada e case-insensitive

   Valor_Inicial : constant Integer := 5;
begin
   -- Bloco interno (declare) permite criar novas amarracoes locais
   declare
      -- 'total_soma' referencia a mesma entidade que 'Total_Soma'
      Resultado : Integer := total_soma + Valor_Inicial;
   begin
      Put_Line ("Resultado em Ada:" & Integer'Image (Resultado));
   end;
end Identificadores;