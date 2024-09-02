<?php

namespace Drupal\atm_module\Form;

use Drupal\Core\Form\FormBase;
use Drupal\Core\Form\FormStateInterface;

class AtmForm extends FormBase {

  /**
   * {@inheritdoc}
    */
  public function getFormId() {
    return 'atm_form';
  }

  /**
   * {@inheritdoc}
   *    construindo o formulario, com o campo e botão
   */
  public function buildForm(array $form, FormStateInterface $form_state) {
    // campo do tipo 'number' chamado 'amount'
    $form['amount'] = [
      '#type' => 'number', // O tipo de campo é um número
      '#title' => $this->t('Amount to withdraw'), // label do campo
      '#required' => TRUE, // campo é obrigatório
    ];

    // botão para submitar o formulário
    $form['submit'] = [
      '#type' => 'submit', // tipo de elemento como um botão submit
      '#value' => $this->t('Withdraw'), // texto do botão
    ];


    // testando aparição do texto
    if ($form_state->get('custom_message')) {
        $form['custom_message']['#markup'] = '<p>' . $this->t($form_state->get('custom_message')) . '</p>';
        //limpando 
        $form_state->set('custom_message', NULL);
    }
  

    // retornando a estrutura do formulário
    return $form;
  }

  /**
   * {@inheritdoc}
   * faz a submissão do formulario (onde deve haver a logica antes de submitar de fato) quando clica no botão de submit
   */
  public function submitForm(array &$form, FormStateInterface $form_state) {
        // captando o valor do campo submitado chamado amount
        $amount = $form_state->getValue('amount');

        if($amount == 0) {
            // teste de erro
            $this->messenger()->addError($this->t('Please enter a value greater than zero')); 
        }else{
            // numero validaddo

            $banknoteList = $this->withdraw($amount);
            
            $formattedAmount = number_format($amount, 2, ',', '.');
            $message_parts = "<h1>Valor do saque R$$formattedAmount</hh1>";

            foreach ($banknoteList as $value => $count) {
                if($value == 'total'){
                  $message_parts .= "<h3>Foram retiradas $count cédulas no total.</h3>";
                  break;
                }
                if ($count > 0) {
                  $formattedBanknote = number_format($value, 2, ',', '.');
                  $message_parts .= "<h5>$count nota(s) de R$ $formattedBanknote</h5>";
                }

            }

            $this->messenger()->addMessage($this->t('You entered: $@amount', ['@amount' => $amount]));
            $form_state->set('custom_message', $message_parts); // AQUI 
            $form_state->setRebuild(TRUE);
        }

    }

    public function withdraw($amount){
        $banknote100 = 0;
        $banknote50 = 0;
        $banknote10 = 0;
        $banknote5 = 0;
        $banknote2 = 0;
        $banknote1 = 0;

        if($amount >= 100){
          $banknote100 = intdiv($amount, 100);
          $amount %= 100;
        }
        if($amount >= 50){
          $banknote50 = intdiv($amount, 50);
          $amount %= 50;
        }
        if($amount >= 10){
          $banknote10 = intdiv($amount, 10);
          $amount %= 10;
        }
        if($amount >= 5){
          $banknote5 = intdiv($amount, 5);
          $amount %= 5;
        }
        if($amount >= 2){
          $banknote2 = intdiv($amount, 2);
          $amount %= 2;
        }
        
        if ($amount >= 1) {
            $banknote1 = $amount;
        }

        return [
          '100' => $banknote100,
          '50' => $banknote50,
          '10' => $banknote10,
          '5' => $banknote5,
          '2' => $banknote2,
          '1' => $banknote1,
          'total' => $banknote100+$banknote50+$banknote10+$banknote5+$banknote2+$banknote1
        ];
    }
}