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
int main() {
	// Instanciando um objeto da biblioteca
	Fuzzy* fuzzy = new Fuzzy();

	FuzzyInput* distanciaA = new FuzzyInput(1);
	FuzzyInput* distanciaB = new FuzzyInput(2);
	FuzzyOutput* saidaMotorA = new FuzzyOutput(1);
	FuzzyOutput* saidaMotorB = new FuzzyOutput(2);

	/*============Definindo conjunto de entrada============*/
	FuzzySet* baixaA = new FuzzySet(10, 15, 20, 25);
	FuzzySet* baixaB = new FuzzySet(10, 15, 20, 25);
	distanciaA->addFuzzySet(baixaA);
	distanciaB->addFuzzySet(baixaB);

	FuzzySet* altaA = new FuzzySet(20, 30, 45, 45);
	FuzzySet* altaB = new FuzzySet(20, 30, 45, 45);
	distanciaA->addFuzzySet(altaA);
	distanciaB->addFuzzySet(altaB);

	fuzzy->addFuzzyInput(distanciaA);
	fuzzy->addFuzzyInput(distanciaB);
	/*=====================================================*/

	/*=============Definindo conjunto de saída=============*/
	FuzzySet* fracoA = new FuzzySet(1100, 1300, 1400, 1500);
	FuzzySet* fracoB = new FuzzySet(1100, 1300, 1400, 1500);
	saidaMotorA->addFuzzySet(fracoA);
	saidaMotorB->addFuzzySet(fracoB);
	FuzzySet* forteA = new FuzzySet(1450, 1550, 1650, 1750);
	FuzzySet* forteB = new FuzzySet(1450, 1550, 1650, 1750);
	saidaMotorA->addFuzzySet(forteA);
	saidaMotorB->addFuzzySet(forteB);

	fuzzy->addFuzzyOutput(saidaMotorA);
	fuzzy->addFuzzyOutput(saidaMotorB);
	/*=====================================================*/

	/*============Definindo conjunto de regras=============*/
	FuzzyRuleAntecedent* se_AlturaA_Baixa_e_AlturaB_Alta = new FuzzyRuleAntecedent();
	se_AlturaA_Baixa_e_AlturaB_Alta->joinWithAND(baixaA, altaB);
	FuzzyRuleConsequent* entao_ForteA_FracoB = new FuzzyRuleConsequent();
	entao_ForteA_FracoB->addOutput(forteA);
	entao_ForteA_FracoB->addOutput(fracoB);
	FuzzyRule* fuzzyRule1 = new FuzzyRule(1, se_AlturaA_Baixa_e_AlturaB_Alta, entao_ForteA_FracoB);
	fuzzy->addFuzzyRule(fuzzyRule1);
	/*=====================================================*/
	FuzzyRuleAntecedent* se_AlturaB_Baixa_e_AlturaA_Alta = new FuzzyRuleAntecedent();
	se_AlturaB_Baixa_e_AlturaA_Alta->joinWithAND(baixaB, altaA);
	FuzzyRuleConsequent* entao_ForteB_FracoA = new FuzzyRuleConsequent();
	entao_ForteB_FracoA->addOutput(forteB);
	entao_ForteB_FracoA->addOutput(fracoA);
	FuzzyRule* fuzzyRule2 = new FuzzyRule(2, se_AlturaB_Baixa_e_AlturaA_Alta, entao_ForteB_FracoA);
	fuzzy->addFuzzyRule(fuzzyRule2);
	/*=====================================================*/
	FuzzyRuleAntecedent* se_AlturaB_Baixa_e_AlturaA_baixa = new FuzzyRuleAntecedent();
	se_AlturaB_Baixa_e_AlturaA_baixa->joinWithAND(baixaB, baixaB);
	FuzzyRuleConsequent* entao_ForteB_ForteA = new FuzzyRuleConsequent();
	entao_ForteB_ForteA->addOutput(forteB);
	entao_ForteB_ForteA->addOutput(forteA);
	FuzzyRule* fuzzyRule3 = new FuzzyRule(3, se_AlturaB_Baixa_e_AlturaA_baixa, entao_ForteB_ForteA);
	fuzzy->addFuzzyRule(fuzzyRule3);
	/*=====================================================*/


	for(int dist = 10; dist < 24; dist++){
		fuzzy->setInput(1, dist);
		fuzzy->setInput(2, dist);

		fuzzy->fuzzify();

		float output_A = fuzzy->defuzzify(1);
		float output_B = fuzzy->defuzzify(2);
		cout << "Distancia M_1 : " << dist << ", : " << output_A << endl;
		cout << "Distancia M_2 : " << dist << ", : " << output_B << endl;
	}
    return 0;
}
