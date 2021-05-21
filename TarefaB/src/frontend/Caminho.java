/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frontend;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import org.jpl7.*;
import org.jpl7.Term;

/**
 *
 * @author ssoar
 */
public class Caminho extends javax.swing.JFrame {

    /**
     * Creates new form Caminho
     */
    
    private String Method;
    Set<String> click = new HashSet<String>();
   
    
    public Caminho(String Method) {
        initComponents();
        
        this.Method = Method;
    }
    
    private void terminar() {        
      UIManager.put("OptionPane.noButtonText", "Não");  
      UIManager.put("OptionPane.yesButtonText", "Sim");

       if (JOptionPane.showConfirmDialog(null, 
              "Deseja realmente terminar o programa?", 
              "Terminar",

              JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
               dispose();
               System.exit(0);

      }
    }
    
    private void objetivo2() {   

        String mensagem="";
        //String resultado="";
        ArrayList<String> resultado = new ArrayList<String>();
        int i  = 0;
        //ArrayList<String> resultado = new ArrayList<String>();
        
        Query query = new Query("consult('D:/Universidade/2º semestre/SBC/TarefaB/bd3.pl')");
        
        System.out.println("consult " + (query.hasSolution() ? "ok" : "falhou"));       
        
        mensagem += "assert((goal(X):- member("+ click.toArray()[0]+", X), member("+ click.toArray()[1]+", X))),";
        mensagem += "assert((valor(VS):- lucro1(_,"+click.toArray()[0]+",V), lucro1(_,"+ click.toArray()[1]+",Y), VS is V + Y)),";
        mensagem += "search(Method,Par,S), last(S,LS), length(S,N),N1 is N-1, eval(LS,D),D1 is D + 2, valor(V).";     
                 
        Query result = new Query(mensagem);
        System.out.println(mensagem);
        System.out.println("Os clientes são: " + click.toArray()[0] + "e " + click.toArray()[1]);
        //String resultado =  result.oneSolution().toString();
                
          Map<String, Term> solucao= new HashMap<String,Term>();
        while (result.hasMoreSolutions()) { // until all sol are found
            solucao = result.nextSolution();
            resultado.add("Lucro: "+ solucao.get("V").toString() + ", Tempo: " + solucao.get("D").toString()+ ", Caminho:" + solucao.get("LS").toString()); 
            if (i++ > 10) {
                break;
            }
        }            
        
        /*Map<String, Term>[] s= result.allSolutions();
        //System.out.println(s.length);
        String solucao ="";
       
        for (int i =0; i < s.length; i++){
            Collection<Term> resposta = s[i].values();
            solucao += resposta+"\n";    
        }*/
            
        dispose();
        Resultado r = new Resultado(resultado);
        r.setLocationRelativeTo(null);
        r.setVisible(true);       
    }
    
    private void objetivo1() {
        String mensagem="";
         ArrayList<String> resultado = new ArrayList<String>();
        //String resultado="";
        
        int i = 0;
       
        Query query = new Query("consult('D:/Universidade/2º semestre/SBC/TarefaB/bd.pl')");
        
        System.out.println("consult " + (query.hasSolution() ? "ok" : "falhou"));
        
        mensagem += "def_goal("+click.toArray()[0]+"), run("+Method+", LS,S,D).";                 
             
        System.out.println(mensagem);
        
        System.out.println("Cliente: " + click.toArray()[0]);     
        
        Query result = new Query(mensagem);
        
        Map<String, Term> solucao= new HashMap<String,Term>();
        while (result.hasMoreSolutions()) { // until all sol are found
            solucao = result.nextSolution();
            resultado.add(solucao.toString().replaceAll("LS", "Caminho").replaceAll("S", "Lucro").replaceAll("D", "Tempo"));
            //resultado += solucao + "\n";   
            if (i++ > 10) {
                break;
            }
        } 
        
        dispose();
        Resultado r = new Resultado(resultado);
        r.setLocationRelativeTo(null);
        r.setVisible(true);      
        
        /*Map<String, Term>[] s= result.allSolutions();
        
        for (int i =0; s.length>i; i++){
            Collection<Term> resposta = s[i].values();
            solucao += resposta+"\n";         
        }*/
        
        //System.out.println(solucao);
        }
    
    
        private void randomObj1() {
            String mensagem="";
            ArrayList<String> resultado = new ArrayList<String>();
            ArrayList<String> clienteArray = new ArrayList<>();
            int i = 0;
            
            Query query = new Query("consult('D:/Universidade/2º semestre/SBC/TarefaB/bd.pl')");
            
            System.out.println(query.hasSolution() ? "ok" : "erro");
               
            Random rand = new Random();

            clienteArray.add("cliente1");
            clienteArray.add("cliente2");
            clienteArray.add("cliente3");
            clienteArray.add("cliente4");
            clienteArray.add("cliente5");
            
            int clienteIndex = Math.abs(rand.nextInt()%5);
            
            String cliente = clienteArray.get(clienteIndex);
            
            mensagem += "def_goal("+cliente+"), run("+Method+", LS,S,D).";                 
             
            System.out.println(mensagem);
            
            System.out.println("Cliente: " + cliente);  
                 
            Query result = new Query(mensagem);
        
            Map<String, Term> solucao= new HashMap<String,Term>();
            while (result.hasMoreSolutions()) { // until all sol are found
                solucao = result.nextSolution();
                resultado.add(solucao.toString().replaceAll("LS", "Caminho").replaceAll("S", "Lucro").replaceAll("D", "Tempo"));
                if (i++ > 10) {
                    break;
                }
            } 
        
            dispose();
            Resultado r = new Resultado(resultado);
            r.setLocationRelativeTo(null);
            r.setVisible(true); 
        
        }
        
        private void randomObj2() {
            String mensagem="";
            ArrayList<String> resultado = new ArrayList<String>();
        
            ArrayList<String> clienteArray = new ArrayList<>();
            int i = 0;
            
            Query query = new Query("consult('D:/Universidade/2º semestre/SBC/TarefaB/bd3.pl')");
            
            System.out.println(query.hasSolution() ? "ok" : "erro");
               
            Random rand = new Random();

            clienteArray.add("cliente1");
            clienteArray.add("cliente2");
            clienteArray.add("cliente3");
            clienteArray.add("cliente4");
            //clienteArray.add("cliente5");
            
            int clienteIndex1 = Math.abs(rand.nextInt()%4);
            int clienteIndex2 = Math.abs(rand.nextInt()%4);
            
            String cliente1 = clienteArray.get(clienteIndex1); 
            String cliente2 = clienteArray.get(clienteIndex2); 
            
            System.out.println("consult " + (query.hasSolution() ? "ok" : "falhou"));       
        
            mensagem += "assert((goal(X):- member("+ cliente1+", X), member("+ cliente2+", X))),";
            mensagem += "assert((valor(VS):- lucro1(_,"+cliente1+",V), lucro1(_,"+ cliente2+",Y), VS is V + Y)),";
            mensagem += "search(Method,Par,S), last(S,LS), length(S,N),N1 is N-1, eval(LS,D),D1 is D + 2, valor(V).";     

            Query result = new Query(mensagem);                      
        
            //String resultado =  result.oneSolution().toString();
           
            System.out.println("Cliente: " + cliente1 + " e " + cliente2);  
            
            Map<String, Term> solucao= new HashMap<String,Term>();
            
            while (result.hasMoreSolutions()) { // until all sol are found
                solucao = result.nextSolution();
                resultado.add("Lucro: "+ solucao.get("V").toString() + ", Tempo: " + solucao.get("D").toString()+ ", Caminho:" + solucao.get("LS").toString()); 
                if (i++ > 10) {
                break;
                }
            } 
            
            dispose();
            Resultado r = new Resultado(resultado);
            r.setLocationRelativeTo(null);
            r.setVisible(true); 
        
        }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbCliente4 = new javax.swing.JLabel();
        lbCliente2 = new javax.swing.JLabel();
        lbCliente3 = new javax.swing.JLabel();
        lbCliente5 = new javax.swing.JLabel();
        lbCliente1 = new javax.swing.JLabel();
        btSair = new javax.swing.JLabel();
        lbRestaurante = new javax.swing.JLabel();
        cbObjetivo2 = new javax.swing.JCheckBox();
        lbRandom = new javax.swing.JLabel();
        cbRandomObj2 = new javax.swing.JCheckBox();
        cbRandomObj1 = new javax.swing.JCheckBox();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(1225, 377));
        setUndecorated(true);
        getContentPane().setLayout(null);

        lbCliente4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCliente4MouseClicked(evt);
            }
        });
        getContentPane().add(lbCliente4);
        lbCliente4.setBounds(455, 4, 120, 90);

        lbCliente2.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCliente2MouseClicked(evt);
            }
        });
        getContentPane().add(lbCliente2);
        lbCliente2.setBounds(725, 4, 120, 80);

        lbCliente3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCliente3MouseClicked(evt);
            }
        });
        getContentPane().add(lbCliente3);
        lbCliente3.setBounds(1055, 44, 160, 110);

        lbCliente5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCliente5MouseClicked(evt);
            }
        });
        getContentPane().add(lbCliente5);
        lbCliente5.setBounds(885, 184, 200, 160);

        lbCliente1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCliente1MouseClicked(evt);
            }
        });
        getContentPane().add(lbCliente1);
        lbCliente1.setBounds(335, 164, 180, 150);

        btSair.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagem/sair.png"))); // NOI18N
        btSair.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btSairMouseClicked(evt);
            }
        });
        getContentPane().add(btSair);
        btSair.setBounds(40, 310, 80, 40);
        getContentPane().add(lbRestaurante);
        lbRestaurante.setBounds(10, 10, 340, 150);

        cbObjetivo2.setBackground(new java.awt.Color(255, 255, 255));
        cbObjetivo2.setText("Objetivo 2");
        getContentPane().add(cbObjetivo2);
        cbObjetivo2.setBounds(10, 190, 100, 23);

        lbRandom.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagem/random (1).png"))); // NOI18N
        lbRandom.setText("jLabel3");
        lbRandom.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbRandomMouseClicked(evt);
            }
        });
        getContentPane().add(lbRandom);
        lbRandom.setBounds(10, 230, 60, 60);

        cbRandomObj2.setBackground(new java.awt.Color(255, 255, 255));
        cbRandomObj2.setText("Random Obj 2");
        getContentPane().add(cbRandomObj2);
        cbRandomObj2.setBounds(80, 270, 130, 23);

        cbRandomObj1.setBackground(new java.awt.Color(255, 255, 255));
        cbRandomObj1.setText("Random Obj 1");
        getContentPane().add(cbRandomObj1);
        cbRandomObj1.setBounds(80, 230, 120, 23);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagem/mapaSIMIO.PNG"))); // NOI18N
        getContentPane().add(jLabel1);
        jLabel1.setBounds(0, 0, 1230, 380);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void lbCliente4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCliente4MouseClicked
        // TODO add your handling code here:   
    if (cbObjetivo2.isSelected()) {
        click.add("cliente4");
        
        if(click.size() == 2) {
            objetivo2();              
        }
        
    } else {
        click.add("cliente4");
        objetivo1();
    } 
    }//GEN-LAST:event_lbCliente4MouseClicked

    private void lbCliente2MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCliente2MouseClicked
        // TODO add your handling code here:
    if (cbObjetivo2.isSelected()) {
        click.add("cliente2");
        
        if(click.size() == 2) {
            objetivo2();              
        }
        
    } else {
        click.add("cliente2");
        objetivo1();
    } 
    }//GEN-LAST:event_lbCliente2MouseClicked

    private void lbCliente3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCliente3MouseClicked
        // TODO add your handling code here:
    if (cbObjetivo2.isSelected()) {
        click.add("cliente3");
        
        if(click.size() == 2) {
            objetivo2();              
        }
        
    } else {
        click.add("cliente3");
        objetivo1();
    } 
    }//GEN-LAST:event_lbCliente3MouseClicked

    private void lbCliente5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCliente5MouseClicked
        // TODO add your handling code here:
    if (cbObjetivo2.isSelected()) {
        click.add("cliente5");
        
        if(click.size() == 2) {
            objetivo2();              
        }
        
    } else {
        click.add("cliente5");
        objetivo1();
    } 
    }//GEN-LAST:event_lbCliente5MouseClicked

    private void lbCliente1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCliente1MouseClicked
        // TODO add your handling code here:         
    if (cbObjetivo2.isSelected()) {
        click.add("cliente1");
        
        if(click.size() == 2) {
            objetivo2();              
        }
        
    } else {
        click.add("cliente1");
        objetivo1();
    }       
    }//GEN-LAST:event_lbCliente1MouseClicked

    private void btSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btSairMouseClicked
        // TODO add your handling code here:
        terminar();
    }//GEN-LAST:event_btSairMouseClicked

    private void lbRandomMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbRandomMouseClicked
        // TODO add your handling code here:
     if (cbRandomObj1.isSelected()) {   
        randomObj1();
     }
     
     else if(cbRandomObj2.isSelected()){
         randomObj2();
     }
     
     else if (cbRandomObj1.isSelected() && cbRandomObj2.isSelected()) {
         JOptionPane.showMessageDialog(null, "Selecione apenas um random!.","Erro",JOptionPane.ERROR_MESSAGE);
     }
     
     else {
         JOptionPane.showMessageDialog(null, "Selecione um dos random!.","Erro",JOptionPane.ERROR_MESSAGE);
     }
    }//GEN-LAST:event_lbRandomMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main1(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Caminho.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Caminho.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Caminho.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Caminho.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new Caminho().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btSair;
    private javax.swing.JCheckBox cbObjetivo2;
    private javax.swing.JCheckBox cbRandomObj1;
    private javax.swing.JCheckBox cbRandomObj2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel lbCliente1;
    private javax.swing.JLabel lbCliente2;
    private javax.swing.JLabel lbCliente3;
    private javax.swing.JLabel lbCliente4;
    private javax.swing.JLabel lbCliente5;
    private javax.swing.JLabel lbRandom;
    private javax.swing.JLabel lbRestaurante;
    // End of variables declaration//GEN-END:variables
}
