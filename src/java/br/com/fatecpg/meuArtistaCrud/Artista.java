package br.com.fatecpg.meuArtistaCrud;

import java.util.ArrayList;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Artista {
    private String nome;
    private String genero;
    private String[] integrantes;
    private ArrayList<Disco> discos = new ArrayList<>();
    //construtor sem parametro
    public Artista() {
    }
    //construtor com todos os parametros 
    public Artista(String nome, String genero, String[] integrantes) {
        this.nome = nome;
        this.genero = genero;
        this.integrantes = integrantes;
    }
    //construção dos getters e setters com todos os atributos encapsulados
    public String[] getIntegrantes() {
        return integrantes;
    }

    public void setIntegrantes(String[] integrantes) {
        this.integrantes = integrantes;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public ArrayList<Disco> getDiscos() {
        return discos;
    }

    public void setDiscos(ArrayList<Disco> discos) {
        this.discos = discos;
    }

    int indexOf(Artista artistas) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
