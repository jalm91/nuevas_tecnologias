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
@Table(name = "contact")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contact.findAll", query = "SELECT c FROM Contact c")
    , @NamedQuery(name = "Contact.findByIdContect", query = "SELECT c FROM Contact c WHERE c.idContect = :idContect")
    , @NamedQuery(name = "Contact.findByNameContact", query = "SELECT c FROM Contact c WHERE c.nameContact = :nameContact")
    , @NamedQuery(name = "Contact.findByEmail", query = "SELECT c FROM Contact c WHERE c.email = :email")
    , @NamedQuery(name = "Contact.findByAsunto", query = "SELECT c FROM Contact c WHERE c.asunto = :asunto")
    , @NamedQuery(name = "Contact.findByMensaje", query = "SELECT c FROM Contact c WHERE c.mensaje = :mensaje")})
public class Contact implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_contect")
    private Integer idContect;
    @Column(name = "name_contact")
    private String nameContact;
    @Column(name = "email")
    private String email;
    @Column(name = "asunto")
    private String asunto;
    @Column(name = "mensaje")
    private String mensaje;

    public Contact() {
    }

    public Contact(Integer idContect) {
        this.idContect = idContect;
    }

    public Integer getIdContect() {
        return idContect;
    }

    public void setIdContect(Integer idContect) {
        this.idContect = idContect;
    }

    public String getNameContact() {
        return nameContact;
    }

    public void setNameContact(String nameContact) {
        this.nameContact = nameContact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idContect != null ? idContect.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contact)) {
            return false;
        }
        Contact other = (Contact) object;
        if ((this.idContect == null && other.idContect != null) || (this.idContect != null && !this.idContect.equals(other.idContect))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.all_world_shirtts.entities.Contact[ idContect=" + idContect + " ]";
    }
    
}
