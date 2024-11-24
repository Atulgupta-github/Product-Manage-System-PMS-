package com.demo.product.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "sku") // Specify the table name
public class Product {

    @Id
    private String skuCode; // Use skuCode as the primary key

    private String skuName;
    private Integer skuQuantity;
    private Double MRP;
    private String skuType;
    private String bin;
    private String binType;
    private String lot;
    private String binStatus;
    private String skuStatus;

    // Getters and Setters
    public String getSkuCode() {
        return skuCode;
    }

    public void setSkuCode(String skuCode) {
        this.skuCode = skuCode;
    }

    public String getSkuName() {
        return skuName;
    }

    public void setSkuName(String skuName) {
        this.skuName = skuName;
    }

    public Integer getSkuQuantity() {
        return skuQuantity;
    }

    public void setSkuQuantity(Integer skuQuantity) {
        this.skuQuantity = skuQuantity;
    }

    public Double getMRP() {
        return MRP;
    }

    public void setMRP(Double MRP) {
        this.MRP = MRP;
    }

    public String getSkuType() {
        return skuType;
    }

    public void setSkuType(String skuType) {
        this.skuType = skuType;
    }

    public String getBin() {
        return bin;
    }

    public void setBin(String bin) {
        this.bin = bin;
    }

    public String getBinType() {
        return binType;
    }

    public void setBinType(String binType) {
        this.binType = binType;
    }

    public String getLot() {
        return lot;
    }

    public void setLot(String lot) {
        this.lot = lot;
    }

    public String getBinStatus() {
        return binStatus;
    }

    public void setBinStatus(String binStatus) {
        this.binStatus = binStatus;
    }

    public String getSkuStatus() {
        return skuStatus;
    }

    public void setSkuStatus(String skuStatus) {
        this.skuStatus = skuStatus;
    }
}
