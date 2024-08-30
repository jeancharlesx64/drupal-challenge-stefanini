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
            $this->messenger()->addMessage($this->t('You entered: $@amount', ['@amount' => $amount]));
            $form_state->set('custom_message', "olaaaa");
            $form_state->setRebuild(TRUE);
        }

    }
}