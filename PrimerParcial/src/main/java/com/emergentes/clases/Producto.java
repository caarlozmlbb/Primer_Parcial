
package com.emergentes.clases;


public class Producto {
    private int id;
    private String descripcion;
    private String cantidad;
    private double precio
            ;
    private String categoria;

    public Producto() {
        this.id = 0;
        this.descripcion ="";
        this.cantidad = "";
        this.precio = 0.0;
        this.categoria ="";
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    
}
