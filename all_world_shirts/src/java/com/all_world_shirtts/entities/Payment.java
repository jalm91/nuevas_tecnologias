/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirtts.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Home
 */
@Entity
@Table(name = "payment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Payment.findAll", query = "SELECT p FROM Payment p")
    , @NamedQuery(name = "Payment.findByIdPayment", query = "SELECT p FROM Payment p WHERE p.idPayment = :idPayment")
    , @NamedQuery(name = "Payment.findByNamePayment", query = "SELECT p FROM Payment p WHERE p.namePayment = :namePayment")
    , @NamedQuery(name = "Payment.findByEmail", query = "SELECT p FROM Payment p WHERE p.email = :email")
    , @NamedQuery(name = "Payment.findByTarjeta", query = "SELECT p FROM Payment p WHERE p.tarjeta = :tarjeta")
    , @NamedQuery(name = "Payment.findByTarjetaNum", query = "SELECT p FROM Payment p WHERE p.tarjetaNum = :tarjetaNum")
    , @NamedQuery(name = "Payment.findByCodigo", query = "SELECT p FROM Payment p WHERE p.codigo = :codigo")
    , @NamedQuery(name = "Payment.findByValor", query = "SELECT p FROM Payment p WHERE p.valor = :valor")})
public class Payment implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_payment")
    private Integer idPayment;
    @Column(name = "name_payment")
    private String namePayment;
    @Column(name = "email")
    private String email;
    @Column(name = "tarjeta")
    private String tarjeta;
    @Column(name = "tarjeta_num")
    private String tarjetaNum;
    @Column(name = "codigo")
    private String codigo;
    @Column(name = "valor")
    private String valor;

    public Payment() {
    }

    public Payment(Integer idPayment) {
        this.idPayment = idPayment;
    }

    public Integer getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(Integer idPayment) {
        this.idPayment = idPayment;
    }

    public String getNamePayment() {
        return namePayment;
    }

    public void setNamePayment(String namePayment) {
        this.namePayment = namePayment;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTarjeta() {
        return tarjeta;
    }

    public void setTarjeta(String tarjeta) {
        this.tarjeta = tarjeta;
    }

    public String getTarjetaNum() {
        return tarjetaNum;
    }

    public void setTarjetaNum(String tarjetaNum) {
        this.tarjetaNum = tarjetaNum;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPayment != null ? idPayment.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Payment)) {
            return false;
        }
        Payment other = (Payment) object;
        if ((this.idPayment == null && other.idPayment != null) || (this.idPayment != null && !this.idPayment.equals(other.idPayment))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.all_world_shirtts.entities.Payment[ idPayment=" + idPayment + " ]";
    }
    
}
