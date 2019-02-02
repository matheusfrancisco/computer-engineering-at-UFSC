#include <iostream>
#include "FuzzyRule.h"
#include "FuzzyComposition.h"
#include "Fuzzy.h"
#include "FuzzyRuleConsequent.h"
#include "FuzzyOutput.h"
#include "FuzzyInput.h"
#include "FuzzyIO.h"
#include "FuzzySet.h"
#include "FuzzyRuleAntecedent.h"

using namespace std;

int main(int argc, char *argv[]) {
	// Instanciando um objeto da biblioteca
	Fuzzy* fuzzy = new Fuzzy();
    /**Criando o Fuzzyinput escolaridade*/
	// Criando o FuzzyInput distancia
	FuzzyInput* vazao = new FuzzyInput(1);
    /**Criando os FuzzySet que compoem o FuzzyInput distancia**/
	// Criando os FuzzySet que compoem o FuzzyInput distancia
	FuzzySet* fraca = new FuzzySet(-10,0,0,50); // Distancia pequena
	vazao->addFuzzySet(fraca); // Adicionando o FuzzySet small em distance
	FuzzySet* normal = new FuzzySet(10, 50, 50, 90); // Distancia segura
	vazao->addFuzzySet(normal); // Adicionando o FuzzySet safe em distance
	FuzzySet* forte = new FuzzySet(50, 100, 100, 110); // Distancia grande
	vazao->addFuzzySet(forte); // Adicionando o FuzzySet big em distance

	fuzzy->addFuzzyInput(vazao); // Adicionando o FuzzyInput no objeto Fuzzy


	FuzzyInput* nivel = new FuzzyInput(1);
    /**Criando os FuzzySet que compoem o FuzzyInput distancia**/
	// Criando os FuzzySet que compoem o FuzzyInput distancia
	FuzzySet* muito_baixa = new FuzzySet(-10, 8,8,15); // Distancia pequena
	nivel->addFuzzySet(muito_baixa); // Adicionando o FuzzySet small em distance
	FuzzySet* baixo = new FuzzySet(13, 20, 20, 28); // Distancia segura
	nivel->addFuzzySet(baixo); // Adicionando o FuzzySet safe em distance
	FuzzySet* medio = new FuzzySet(25,45,45,50); // Distancia grande
	nivel->addFuzzySet(medio); // Adicionando o FuzzySet big em distance
    FuzzySet* cheio = new FuzzySet(48,60,60,70); // Distancia grande
	nivel->addFuzzySet(cheio); // Adicionando o FuzzyInput no objeto Fuzzy
	FuzzySet* muito_cheio = new FuzzySet(70,89,89,110);
	nivel->addFuzzySet(muito_cheio);

    fuzzy->addFuzzyInput(nivel); // Adicionando o FuzzyInput no objeto Fuzzy

	// Criando o FuzzyOutput velocidade
	FuzzyOutput* portas = new FuzzyOutput(1);
	// Criando os FuzzySet que compoem o FuzzyOutput velocidade
	FuzzySet* fechada = new FuzzySet(-10, 0, 0, 10); // Velocidade lenta
	portas->addFuzzySet(fechada); // Adicionando o FuzzySet slow em velocity
	FuzzySet* minimo = new FuzzySet(7,15,15,40); // Velocidade normal
	portas->addFuzzySet(minimo); // Adicionando o FuzzySet average em velocity
	FuzzySet* med = new FuzzySet(30,50,50,70); // Velocidade alta
	portas->addFuzzySet(med); // Adicionando o FuzzySet fast em velocity
    FuzzySet* maxima = new FuzzySet(60,85,85,110); // Velocidade alta
	portas->addFuzzySet(maxima);

	fuzzy->addFuzzyOutput(portas); // Adicionando o FuzzyOutput no objeto Fuzzy

	//-------------------- Montando as regras Fuzzy


	FuzzyRuleAntecedent* ifvazaofraca = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifvazaofraca->joinSingle(fraca);
	FuzzyRuleAntecedent* ifvazaonormal = new FuzzyRuleAntecedent();
	FuzzyRuleAntecedent* ifvazaoforte = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifvazaoforte->joinSingle(normal);


    FuzzyRuleAntecedent* ifnivelmtbaixo = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifnivelmtbaixo->joinSingle(muito_baixa);
    FuzzyRuleAntecedent* ifnivelbaixo = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifnivelbaixo->joinSingle(baixo);
	FuzzyRuleAntecedent* ifnivelmedio = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifnivelmedio->joinSingle(medio);
	FuzzyRuleAntecedent* ifnivelcheio = new FuzzyRuleAntecedent(); // Instanciando um Antecedente para a expresso
	ifnivelcheio->joinSingle(cheio);

	FuzzyRuleConsequent* thenportas = new FuzzyRuleConsequent(); // Instancinado um Consequente para a expressao
	thenportas->addOutput(fechada);
	FuzzyRuleConsequent* thenportasmin = new FuzzyRuleConsequent(); // Instancinado um Consequente para a expressao
	thenportasmin->addOutput(minimo);
	FuzzyRuleConsequent* thenportasmaximo = new FuzzyRuleConsequent(); // Instancinado um Consequente para a expressao
	thenportasmaximo->addOutput(maxima);
	FuzzyRuleConsequent* thenportasmed = new FuzzyRuleConsequent(); // Instancinado um Consequente para a expressao
	thenportasmed->addOutput(med);

	FuzzyRule* fuzzyRule03 = new FuzzyRule(3, ifnivelmtbaixo and ifvazaoforte , thenportas); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule03); // Adicionando o FuzzyRule ao objeto Fuzzy
    FuzzyRule* fuzzyRule02 = new FuzzyRule(2, ifnivelmtbaixo, thenportas); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule02);
    FuzzyRule* fuzzyRule01 = new FuzzyRule(1,ifvazaofraca , thenportas); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule01); // Adicionando FuzzyRule ao objeto Fuzzy
    FuzzyRule* fuzzyRule04 = new FuzzyRule(4,ifvazaoforte , thenportas); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule04);
	 FuzzyRule* fuzzyRule05 = new FuzzyRule(4,ifvazaoforte , thenportasmed); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule05);
	 FuzzyRule* fuzzyRule04 = new FuzzyRule(4,ifvazaonormal , thenportasmed); // Passando o Antecedente e o Consequente da expressao
	fuzzy->addFuzzyRule(fuzzyRule04);
	for(int dist = 0; dist < 100; dist++){
		fuzzy->setInput(1, dist);

		fuzzy->fuzzify();

		float output = fuzzy->defuzzify(1);
		cout << "Porcetangem de abertura da comporta: " << dist << ", : " << output << endl;
	}
	return 0;
}
