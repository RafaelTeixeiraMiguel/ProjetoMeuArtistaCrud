package br.com.fatecpg.meuArtistaCrud;

import java.util.ArrayList;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Disco {
    private String nome;
    private int ano;
    private String gravadora;
    private ArrayList<Musica> musicas = new ArrayList<>();
    //construtor sem parametro
    public Disco() {
    }
    //construtor com todos os parametros
    public Disco(String nome, int ano, String gravadora) {
        this.nome = nome;
        this.ano = ano;
        this.gravadora = gravadora;
    }
    //referencia pra ficar mais facil usar o metodo do disco
    public Artista getArtista()
    {
        return Db.getArtista(this);
    }    
    //construção dos getters e setters com todos os atributos encapsulados
    public String getGravadora() {
        return gravadora;
    }

    public void setGravadora(String gravadora) {
        this.gravadora = gravadora;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public ArrayList<Musica> getMusicas() {
        return musicas;
    }

    public void setMusicas(ArrayList<Musica> musicas) {
        this.musicas = musicas;
    }
    
}
