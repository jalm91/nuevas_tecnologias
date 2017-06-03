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
@Table(name = "producto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Producto.findAll", query = "SELECT p FROM Producto p")
    , @NamedQuery(name = "Producto.findByIdProduct", query = "SELECT p FROM Producto p WHERE p.idProduct = :idProduct")
    , @NamedQuery(name = "Producto.findByDescription", query = "SELECT p FROM Producto p WHERE p.description = :description")
    , @NamedQuery(name = "Producto.findByEnabled", query = "SELECT p FROM Producto p WHERE p.enabled = :enabled")
    , @NamedQuery(name = "Producto.findByIdCollection", query = "SELECT p FROM Producto p WHERE p.idCollection = :idCollection")
    , @NamedQuery(name = "Producto.findByImgDefault", query = "SELECT p FROM Producto p WHERE p.imgDefault = :imgDefault")
    , @NamedQuery(name = "Producto.findByNameProduct", query = "SELECT p FROM Producto p WHERE p.nameProduct = :nameProduct")
    , @NamedQuery(name = "Producto.findByPrice", query = "SELECT p FROM Producto p WHERE p.price = :price")
    , @NamedQuery(name = "Producto.findByCantidad", query = "SELECT p FROM Producto p WHERE p.cantidad = :cantidad")})
public class Producto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_product")
    private Integer idProduct;
    @Column(name = "description")
    private String description;
    @Column(name = "enabled")
    private Boolean enabled;
    @Column(name = "id_collection")
    private Integer idCollection;
    @Column(name = "img_default")
    private String imgDefault;
    @Column(name = "name_product")
    private String nameProduct;
    @Column(name = "price")
    private Integer price;
    @Column(name = "cantidad")
    private Integer cantidad;

    public Producto() {
    }

    public Producto(Integer idProduct) {
        this.idProduct = idProduct;
    }

    public Integer getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(Integer idProduct) {
        this.idProduct = idProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public Integer getIdCollection() {
        return idCollection;
    }

    public void setIdCollection(Integer idCollection) {
        this.idCollection = idCollection;
    }

    public String getImgDefault() {
        return imgDefault;
    }

    public void setImgDefault(String imgDefault) {
        this.imgDefault = imgDefault;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProduct != null ? idProduct.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Producto)) {
            return false;
        }
        Producto other = (Producto) object;
        if ((this.idProduct == null && other.idProduct != null) || (this.idProduct != null && !this.idProduct.equals(other.idProduct))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.all_world_shirtts.entities.Producto[ idProduct=" + idProduct + " ]";
    }
    
}
