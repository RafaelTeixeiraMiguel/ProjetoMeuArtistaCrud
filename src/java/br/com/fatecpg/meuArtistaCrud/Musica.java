package br.com.fatecpg.meuArtistaCrud;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Musica {
    private String nome;
    private int duração;
    private String gênero;
    private String autoria;
    //construtor sem parametro
    public Musica() {
    }
    //construtor com todos os parametros
    public Musica(String nome, int duração, String gênero, String autoria) {
        this.nome = nome;
        this.duração = duração;
        this.gênero = gênero;
        this.autoria = autoria;
    }
    //criação de todos os getters e setters com os atributos encapsulados 
    public Disco getDisco(){
        return Db.getDisco(this);
    }
    public Artista getArtista(){
        return getDisco().getArtista();
    }
    public String getAutoria() {
        return autoria;
    }

    public void setAutoria(String autoria) {
        this.autoria = autoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getDuração() {
        return duração;
    }

    public void setDuração(int duração) {
        this.duração = duração;
    }

    public String getGênero() {
        return gênero;
    }

    public void setGênero(String gênero) {
        this.gênero = gênero;
    }
    
    
}
