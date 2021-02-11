package com.mb.webshop.entities;

import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class Product {

    @Column(name = "idproduct")
    @Id
    @NotNull
    @Size(min=1,message="Id is required!")
    private String id;
    @NotNull
    @Size(min=1,message="Name is required!")
    private String name;
    @Column(name = "unitprice")
    @NotNull
    @Range(min=0l, message ="Please enter a positive number!")
    private double unitPrice;
    @NotNull
    @Size(min=1,message="Description is required!")
    private String description;
    @NotNull
    @Size(min=1,message="Manufacturer is required!")
    private String manufacturer;
    @Column(name = "unitsinstock")
    @NotNull
    @Range(min=0l, message ="Please enter a positive number!")
    private int unitsInStock;
    private String image;

    public Product() {

    }

    public Product(String id, String name,double unitPrice, String description,  String manufacturer, int unitsInStock, String image) {
        this.id=id;
        this.name=name;
        this.unitPrice=unitPrice;
        this.description=description;
        this.manufacturer=manufacturer;
        this.unitsInStock=unitsInStock;
        this.image=image;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Product product = (Product) o;

        return id.equals(product.id);
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public int getUnitsInStock() {
        return unitsInStock;
    }

    public void setUnitsInStock(int unitsInStock) {
        this.unitsInStock = unitsInStock;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


}
