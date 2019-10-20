package br.com.fatecpg.meuArtistaCrud;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author Rafael Teixeira Miguel
 */
public class Db {
   private static ArrayList<Artista> artistas;
   private static ArrayList<Usuario> usuarios;
   
   public static int getArtistaIndex(Artista artista){
       return artistas.indexOf(artista);
   }
   
   public static ArrayList<Artista> getArtista() {
        if (artistas == null) {
            artistas = new ArrayList<>();
            Musica a1m1 = new Musica("O Papa é pop", 190, "Rock", "Humberto G.");
            Musica a1m2 = new Musica("Pra ser sincero", 181, "Rock", "Humberto G.");
            Disco a1d1 = new Disco("O Papa é pop", 1990, "BMG");
            a1d1.getMusicas().add(a1m1);
            a1d1.getMusicas().add(a1m2);
            Artista a1 = new Artista("Charlie Brown Jr", "Rock", new String[]{"Chorão, Champigon, Renato Pelado, Marcão"});
            a1.getDiscos().add(a1d1);
            artistas.add(a1);
            Musica a2m1 = new Musica("Sweet old of mine", 480, "Rock", "Axl,Slash");
            Musica a2m2 = new Musica("Paradise City", 510, "Rock", "Axl,Slash");
            Disco a2d1 = new Disco("Appetite for destruction", 1987, "Geffen");
            a2d1.getMusicas().add(a2m2);
            a2d1.getMusicas().add(a2m2);
            Musica a2m3 = new Musica("Civil War", 385, "Rock", "Axl,Slash");
            Musica a2m4 = new Musica("Don't Cry", 410, "Rock", "Axl,Slash");
            Disco a2d2 = new Disco("Use your illusion II", 1992, "Virgin");
            a2d2.getMusicas().add(a2m4);
            a2d2.getMusicas().add(a2m3);
            Artista a2 = new Artista("Mamonas Assassinas", "Rock", new String[]{"Dinho, Beto Hinoto, Julio Rasec, Sergio Reoli, Samuel Reis"});
            a2.getDiscos().add(a2d1);
            a2.getDiscos().add(a2d2);
            artistas.add(a2);
        }
 
        Collections.sort(artistas, new Comparator<Artista>() {
           @Override
           public int compare(Artista o1, Artista o2) {
               return o1.getNome().compareTo(o2.getNome());
           }
        });
       return artistas;
   }
   
   public static ArrayList<Disco> getDiscos(){
       ArrayList<Disco> discos = new ArrayList<>();
       for (Artista artista: getArtista())
       {
           for (Disco disco: artista.getDiscos())
           {
               discos.add(disco);
           }
       }
        Collections.sort(discos, new Comparator<Disco>() {
           @Override
           public int compare(Disco o1, Disco o2) {
               return o1.getNome().compareTo(o2.getNome());
           }
        });
       return discos;
   }
   
   public static Artista getArtista(Disco disco){
       for (Artista artista: getArtista())
       {
           for (Disco discoDoArtista: artista.getDiscos())
           {
               if(disco.equals(discoDoArtista))
               {
                    return artista;
               }
           }
       }
       return null;
   }
   
   public static ArrayList<Musica> getMúsicas(){
       ArrayList<Musica> musicas = new ArrayList<>();
       for (Artista artista: getArtista())
       {
           for (Disco disco: artista.getDiscos())
           {
               for(Musica música: disco.getMusicas())
               {
                   musicas.add(música);
               }
           }
       }
       Collections.sort(musicas, new Comparator<Musica>() {
           @Override
           public int compare(Musica o1, Musica o2) {
               return o1.getNome().compareTo(o2.getNome());
           }
       });
       return musicas;
   }
   
   public static Disco getDisco(Musica musica){
       for(Disco disco: getDiscos()){
           for(Musica musicaDoDisco: disco.getMusicas()){
               if(musica.equals(musicaDoDisco))
                   return disco;
           }
       } 

       return null;
   }
    public static ArrayList<Usuario> getUsuarios(){
        if(usuarios == null){
            usuarios = new ArrayList<>();
            Usuario adm = new Usuario();
            adm.setUsuario("admin".toUpperCase());
            adm.setSenha("admin".toLowerCase());

            usuarios.add(adm);
        }
        return usuarios;
    }

    public static boolean autenticaUsuario(Usuario user){
        for(Usuario u : getUsuarios()){
            if(u.getUsuario().toUpperCase().equals(user.getUsuario().toUpperCase())){
                if(u.getSenha().toLowerCase().equals(user.getSenha().toLowerCase())){
                    return true;
                }
            }
        }
        return false;
    }
}

    

