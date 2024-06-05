namespace Model
{
    public class Carro
    {
        public Carro(int id, string nome, string placa, string cor, int anoModelo, int anoFabricacao)
        {
            Id = id;
            Nome = nome;
            Placa = placa;
            Cor = cor;
            AnoModelo = anoModelo;
            AnoFabricacao = anoFabricacao;
        }

        public int Id { get; set; }
        public string Placa { get; set; }
        public string Nome { get; set; }
        public string Cor { get; set; }
        public int AnoModelo { get; set; }
        public int AnoFabricacao { get; set; }

        public string DadosCarro()
        {
            //return $"Id: {Id}, Placa: {Placa}, Nome: {Nome}, Cor: {Cor}, Ano Modelo: {AnoModelo}, Ano Fabricação: {AnoFabricacao}";
            return $"Id: {Id} - Nome do Carro: {Nome} - Placa: {Placa} - Cor: {Cor} - Ano Modelo: {AnoModelo} - Ano Fabric.: {AnoFabricacao}";
        }
    }
}
