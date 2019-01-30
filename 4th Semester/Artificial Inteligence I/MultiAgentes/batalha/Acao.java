package batalha;

import jade.core.AID;

/**
 *
 *
 */
public abstract class Acao {
    
    public enum TipoAcao{ATTACK, LIFE, FOGO, GELO,  RAIO, PEDRA};
    
    protected Personagem personagem;
    
    public Acao(Personagem personagem)
    {
        this.personagem = personagem;
    }
    
    public abstract String getNome();
    public abstract TipoAcao getTipo();
    public abstract void executar(AID alvo);
}
