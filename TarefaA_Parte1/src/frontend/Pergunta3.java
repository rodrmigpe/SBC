/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frontend;

import javax.swing.JOptionPane;
import javax.swing.UIManager;

/**
 *
 * @author ssoar
 */
public class Pergunta3 extends javax.swing.JFrame {

    /**
     * Creates new form pergunta_2
     */
    private String mensagem;
    
    public Pergunta3(String mensagem) {
        initComponents();
        this.mensagem = mensagem;
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

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel2 = new javax.swing.JLabel();
        btSair = new javax.swing.JLabel();
        btProximo = new javax.swing.JLabel();
        rbFastFood = new javax.swing.JRadioButton();
        rbVegetariana = new javax.swing.JRadioButton();
        rbComidaTradicional = new javax.swing.JRadioButton();
        rbComidaOriental = new javax.swing.JRadioButton();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(616, 409));
        setUndecorated(true);
        getContentPane().setLayout(null);

        jLabel2.setFont(new java.awt.Font("Arial Nova Light", 1, 14)); // NOI18N
        jLabel2.setText("Que tipo de refeição consome mais frequentemente ?");
        getContentPane().add(jLabel2);
        jLabel2.setBounds(160, 140, 390, 23);

        btSair.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/sair.png"))); // NOI18N
        btSair.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btSairMouseClicked(evt);
            }
        });
        getContentPane().add(btSair);
        btSair.setBounds(20, 190, 40, 32);

        btProximo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/right-arrow (2).png"))); // NOI18N
        btProximo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btProximoMouseClicked(evt);
            }
        });
        getContentPane().add(btProximo);
        btProximo.setBounds(550, 190, 40, 32);

        buttonGroup1.add(rbFastFood);
        rbFastFood.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        rbFastFood.setText("Fast-Food");
        rbFastFood.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rbFastFoodActionPerformed(evt);
            }
        });
        getContentPane().add(rbFastFood);
        rbFastFood.setBounds(270, 180, 120, 23);

        buttonGroup1.add(rbVegetariana);
        rbVegetariana.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        rbVegetariana.setText("Vegetariana");
        getContentPane().add(rbVegetariana);
        rbVegetariana.setBounds(270, 210, 120, 23);

        buttonGroup1.add(rbComidaTradicional);
        rbComidaTradicional.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        rbComidaTradicional.setText("Comida Tradicional");
        getContentPane().add(rbComidaTradicional);
        rbComidaTradicional.setBounds(270, 240, 140, 23);

        buttonGroup1.add(rbComidaOriental);
        rbComidaOriental.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        rbComidaOriental.setText("Comida Oriental");
        getContentPane().add(rbComidaOriental);
        rbComidaOriental.setBounds(270, 270, 130, 23);

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagens/fundo_5.jpg"))); // NOI18N
        getContentPane().add(jLabel3);
        jLabel3.setBounds(-10, -10, 650, 430);

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btProximoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btProximoMouseClicked
        // TODO add your handling code here:
   
        
        if (rbFastFood.isSelected() || rbVegetariana.isSelected() || rbComidaTradicional.isSelected() || rbComidaOriental.isSelected()){
             if (rbFastFood.isSelected()){
                 String tipo = "'fastFood'";
                 mensagem += "assert(fact("+tipo+")),";
                 
                 System.out.println(mensagem);
                 
                 this.dispose();
                 Pergunta4 pergunta4 = new Pergunta4(mensagem);
                 pergunta4.setLocationRelativeTo(null);
                 pergunta4.setVisible(true);
                 
              
             }
              if (rbVegetariana.isSelected()){
                 String tipo = "'vegetariana'";
                 mensagem += "assert(fact("+tipo+")),";
                 
                 System.out.println(mensagem);
                 
                 this.dispose();
                 Pergunta4 pergunta4 = new Pergunta4(mensagem);
                 pergunta4.setLocationRelativeTo(null);
                 pergunta4.setVisible(true);
                 
             }
               if (rbComidaTradicional.isSelected()){
                 String tipo = "'comidaTradicional'";
                 mensagem += "assert(fact("+tipo+")),";
                 
                 System.out.println(mensagem);
                 
                 this.dispose();
                 Pergunta4 pergunta4 = new Pergunta4(mensagem);
                 pergunta4.setLocationRelativeTo(null);
                 pergunta4.setVisible(true);
                 
             }
               if (rbComidaOriental.isSelected()){
                 String tipo = "'comidaOriental'";
                 mensagem += "assert(fact("+tipo+")),";
                 
                 System.out.println(mensagem);
                 
                 this.dispose();
                 Pergunta4 pergunta4 = new Pergunta4(mensagem);
                 pergunta4.setLocationRelativeTo(null);
                 pergunta4.setVisible(true);
                 
             }
        }
        
        else {
                JOptionPane.showMessageDialog(null,"Selecione uma das alternativas","Erro",JOptionPane.ERROR_MESSAGE);
     }
    }//GEN-LAST:event_btProximoMouseClicked

    private void btSairMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btSairMouseClicked
        // TODO add your handling code here:
        terminar();
    }//GEN-LAST:event_btSairMouseClicked

    private void rbFastFoodActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rbFastFoodActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rbFastFoodActionPerformed

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
            java.util.logging.Logger.getLogger(Pergunta3.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Pergunta3.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Pergunta3.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Pergunta3.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                //new Pergunta3().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel btProximo;
    private javax.swing.JLabel btSair;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JRadioButton rbComidaOriental;
    private javax.swing.JRadioButton rbComidaTradicional;
    private javax.swing.JRadioButton rbFastFood;
    private javax.swing.JRadioButton rbVegetariana;
    // End of variables declaration//GEN-END:variables
}
