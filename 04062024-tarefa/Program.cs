using Model;
using Newtonsoft.Json;

Console.WriteLine("Gerar carros\n");

List<Carro> carros = new List<Carro>();

const string NomesCarro = "Cruze,Fusca,Gol,Palio,HB20,HR-V,Yaris,Kwid,Duster";
const string PlacasCarro = "ABC-1234,DEF-5678,GHI-9101,JKL-1121,MNO-3141,PQR-5161,STU-7181,VWX-9201,YZA-1221,BBC-3241";
const string CoresCarro = "Branco,Preto,Cinza,Vermelho,Azul,Verde,Amarelo,Rosa,Roxo,Laranja,Prata";

string[] nomesCarroArray = NomesCarro.Split(",");
string[] placasCarroArray = PlacasCarro.Split(",");
string[] coresCarroArray = CoresCarro.Split(",");

Random random = new Random();

for (int i = 0; i < 30; i++)
{
    int indiceAleatorio = random.Next(0, nomesCarroArray.Length - 1);
    int indicePlacaAleatorio = random.Next(0, placasCarroArray.Length - 1);
    int indiceCorAleatorio = random.Next(0, coresCarroArray.Length - 1);

    string nomeCarroAleatorio = nomesCarroArray[indiceAleatorio];
    string placaCarroAleatorio = placasCarroArray[indicePlacaAleatorio];
    string corCarroAleatorio = coresCarroArray[indiceCorAleatorio];

    int id = i + 1;
    int ano = random.Next(2015, 2023);
    carros.Add(new Carro(id, nomeCarroAleatorio, placaCarroAleatorio, corCarroAleatorio, ano, ano));
}
for (int i = 0; i < carros.Count; i++)
{
    Console.WriteLine(carros[i].DadosCarro());
}

Console.WriteLine("Salvar Json de carros.\n");


// Converter o objeto Carro para JSON
string jsonCarros = JsonConvert.SerializeObject(carros);

// Caminho do diretório onde o JSON será salvo
string diretorio = @"C:\Users\jumis";

// Nome do arquivo JSON
string nomeArquivo = "carros.json";

// Caminho completo do arquivo JSON
string caminhoArquivo = Path.Combine(diretorio, nomeArquivo);

try
{
    // Salvar o JSON no diretório especificado
    File.WriteAllText(caminhoArquivo, jsonCarros);

    Console.WriteLine("JSON salvo com sucesso!");
}
catch (Exception ex)
{
    Console.WriteLine($"Ocorreu um erro ao salvar o JSON: {ex.Message}");
}



