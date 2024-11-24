package com.demo.product.dto;

public class ProductDto {
    private String skuCode;
    private String skuName;
    private Integer skuQuantity;
    private Double mrp;
    private String skuType;
    private String bin;
    private String binType;
    private String lot;
    private String binStatus;
    private String skuStatus;
    private String successMsg;
    private String errorMsg;

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

    public Double getMrp() {
        return mrp;
    }

    public void setMrp(Double mrp) {
        this.mrp = mrp;
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

    // toString() for debugging purposes
    @Override
    public String toString() {
        return "ProductDto{" +
                "skuCode='" + skuCode + '\'' +
                ", skuName='" + skuName + '\'' +
                ", skuQuantity=" + skuQuantity +
                ", mrp=" + mrp +
                ", skuType='" + skuType + '\'' +
                ", bin='" + bin + '\'' +
                ", binType='" + binType + '\'' +
                ", lot='" + lot + '\'' +
                ", binStatus='" + binStatus + '\'' +
                ", skuStatus='" + skuStatus + '\'' +
                '}';
    }

	public String getSuccessMsg() {
		return successMsg;
	}

	public void setSuccessMsg(String successMsg) {
		this.successMsg = successMsg;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
    
}
