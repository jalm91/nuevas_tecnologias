/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_wolrd_shirts.dao.domain;

/**
 *
 * @author Home
 */
public class Product {
  Integer idProduc;
  Integer idCollection;
  String nameProduct;
  Integer Price;
  String ImgDefault;

    public Product(Integer idProduc, Integer idCollection, String nameProduct, Integer Price, String ImgDefault) {
        this.idProduc = idProduc;
        this.idCollection = idCollection;
        this.nameProduct = nameProduct;
        this.Price = Price;
        this.ImgDefault = ImgDefault;
    }

    public Integer getIdProduc() {
        return idProduc;
    }

    public void setIdProduc(Integer idProduc) {
        this.idProduc = idProduc;
    }

    public Integer getIdCollection() {
        return idCollection;
    }

    public void setIdCollection(Integer idCollection) {
        this.idCollection = idCollection;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public Integer getPrice() {
        return Price;
    }

    public void setPrice(Integer Price) {
        this.Price = Price;
    }

    public String getImgDefault() {
        return ImgDefault;
    }

    public void setImgDefault(String ImgDefault) {
        this.ImgDefault = ImgDefault;
    }
  
}
