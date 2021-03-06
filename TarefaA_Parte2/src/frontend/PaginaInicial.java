/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frontend;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Random;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import org.jpl7.Query;

/**
 *
 * @author ssoar
 */
        
public class PaginaInicial extends javax.swing.JFrame {

    /**
     * Creates new form pagina_inicial
     */
    
    private String asserts;
    
    public PaginaInicial() {
        initComponents();
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
     
    private void random() {
        String con = "consult('D:/Universidade/2º semestre/SBC/TarefaA_Parte2/base_conhecimento_automatico1.pl')";
        
        Query query = new Query(con);
        
        System.out.println(query.hasSolution() ? "ok" : "erro");
               
        Random rand = new Random();
        
        ArrayList<String> restricaoArray = new ArrayList<>();
        
        ArrayList<String> alergicoArray = new ArrayList<>();
              
        ArrayList<String> regimeArray = new ArrayList<>();

        ArrayList<String> tipoArray = new ArrayList<>();

        ArrayList<String> precoArray = new ArrayList<>();

        ArrayList<String> ocasiaoArray = new ArrayList<>();

        
        restricaoArray.add("'sim'");
        restricaoArray.add("'nao'");
        
        alergicoArray.add("'noGluten'");
        alergicoArray.add("'noLactose'");
        
        regimeArray.add("'normal'");
        regimeArray.add("'vegan'");
        regimeArray.add("'vegetariano'");

        tipoArray.add("'fastFood'");
        tipoArray.add("'vegetariana'");
        tipoArray.add("'comidaTradicional'");
        tipoArray.add("'comidaOriental'");

        precoArray.add("'1-10'");
        precoArray.add("'11-20'");
        precoArray.add("'20+'");

        ocasiaoArray.add("'diasEspeciais'");
        ocasiaoArray.add("'dieta'");
        ocasiaoArray.add("'algumasVezes'");       
        
        //int restricaoIndex = rand.nextInt(restricaoArray.size()); 
        //int alergicoIndex = Math.abs(rand.nextInt(alergicoArray.size())); 
        //int tipoIndex = rand.nextInt(tipoArray.size()); 
        //int ocasiaoIndex = rand.nextInt(ocasiaoArray.size()); 
        //int precoIndex = rand.nextInt(precoArray.size()); 
        
        
        int restricaoIndex = Math.abs(rand.nextInt()%2);
        
        int alergicoIndex = Math.abs(rand.nextInt()%2); 

        int regimeIndex = Math.abs(rand.nextInt()%3); 

        int tipoIndex = Math.abs(rand.nextInt()%4); 

        int ocasiaoIndex = Math.abs(rand.nextInt()%3); 

        int precoIndex = Math.abs(rand.nextInt()%3); 
        
        String restricao = restricaoArray.get(restricaoIndex);
        
        String alergico = alergicoArray.get(alergicoIndex);

        String regime = regimeArray.get(regimeIndex);

        String tipo = tipoArray.get(tipoIndex);

        String ocasiao = ocasiaoArray.get(ocasiaoIndex);

        String preco = precoArray.get(precoIndex);

        if (restricaoIndex == 1) {
            asserts = "assert(fact("+ restricao + ")),assert(fact("+ regime + ")),assert(fact(" + tipo + ")),assert(fact(" + preco + ")),assert(fact(" + ocasiao + ")), resposta(P).";
        }
        
        if (restricaoIndex == 0) {
            asserts = "assert(fact("+ restricao + ")),assert(fact("+ alergico + ")),assert(fact(" + tipo + ")), resposta(P).";
        }

        System.out.println(asserts);
    
         Query query_exec = new Query(asserts);
      
        String refeicao =  query_exec.oneSolution().get("P").toString();

        refeicao = refeicao.replace("â‚¬", " €");
        refeicao = refeicao.replace("Ã§Ã£", "çã");
        refeicao = refeicao.replace("[[['  ", "");  
        refeicao = refeicao.replace("[[['", "");
        refeicao = refeicao.replace("']], _1]", "");    
        refeicao = refeicao.replace("[_1]", "");
        refeicao = refeicao.replace("']], _3]", "");

                if(0 != refeicao.length()) {
                     try {
                         dispose();
                         Resultado resultado = new Resultado(refeicao);
                         resultado.setLocationRelativeTo(null);
                         resultado.setVisible(true);
                         
                     } catch (IOException | ArrayIndexOutOfBoundsException ex) {
                        JOptionPane.showMessageDialog(null,"Ocorreu um erro","Erro",JOptionPane.ERROR_MESSAGE);
                        System.exit(0);
                     }
                
                } else {                  
                    JOptionPane.showMessageDialog(null, "Nenhum resultado encontrado.","Informação",JOptionPane.INFORMATION_MESSAGE);
                }
        
                System.out.println(refeicao);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        btSair = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btProximo = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(255, 255, 255));
        setMinimumSize(new java.awt.Dimension(388, 314));
        setUndecorated(true);
        getContentPane().setLayout(null);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(null);

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/logo_smart_Easy-Resize.com (4).jpg"))); // NOI18N
        jPanel1.add(jLabel3);
        jLabel3.setBounds(120, 60, 152, 110);

        btSair.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/sair.png"))); // NOI18N
        btSair.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btSairMouseClicked(evt);
            }
        });
        jPanel1.add(btSair);
        btSair.setBounds(30, 220, 40, 40);

        jLabel4.setFont(new java.awt.Font("Arial Nova Light", 0, 11)); // NOI18N
        jLabel4.setText("Receita Random");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(150, 270, 90, 14);

        btProximo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/fork.png"))); // NOI18N
        btProximo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btProximoMouseClicked(evt);
            }
        });
        jPanel1.add(btProximo);
        btProximo.setBounds(290, 220, 50, 40);

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/random.png"))); // NOI18N
        jLabel1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel1MouseClicked(evt);
            }
        });
        jPanel1.add(jLabel1);
        jLabel1.setBounds(170, 210, 40, 50);

        jLabel5.setFont(new java.awt.Font("Arial Nova Light", 0, 11)); // NOI18N
        jLabel5.setText("Vamos começar ?!");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(270, 270, 100, 14);

        getContentPane().add(jPanel1);
        jPanel1.setBounds(0, 0, 440, 340);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btProximoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btProximoMouseClicked
        // TODO add your handling code here:
        dispose();
        Nome nome = new Nome();
        nome.setLocationRelativeTo(null);
        nome.setVisible(true);
    }//GEN-LAST:event_btProximoMouseClicked

    private void btSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btSairMouseClicked
        // TODO add your handling code here:
        terminar();
    }//GEN-LAST:event_btSairMouseClicked

    private void jLabel1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel1MouseClicked
        // TODO add your handling code here:
        random();
    }//GEN-LAST:event_jLabel1MouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
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
            java.util.logging.Logger.getLogger(PaginaInicial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PaginaInicial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PaginaInicial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PaginaInicial.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new PaginaInicial().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btProximo;
    private javax.swing.JLabel btSair;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
